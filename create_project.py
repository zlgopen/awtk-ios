import os
import sys
import glob
import json
import shutil

from utils import (join_path, show_usage, mkdir_if_not_exist, file_read, file_write, file_replace,
                   copy_file, copy_folder, copy_glob_files, file_rename, files_replace,
                   copy_awtk_files, copy_app_sources, copy_app_assets, set_cmake_includes,
                   config_get_app_full_name, config_get_app_name, config_get_sources,
                   config_get_includes, merge_and_check_config
                   )


AWTK_IOS_DIR = os.path.abspath(os.path.normpath(os.getcwd()))
BUILD_DIR = join_path(AWTK_IOS_DIR, 'build')
TEMPLATE_DIR = join_path(AWTK_IOS_DIR, 'ios-project')

print('AWTK_IOS_DIR:' + AWTK_IOS_DIR)


def show_usage():
    print('Usage: python create_proj.py app.json')
    sys.exit(0)


def rename_files_content(app_root_dst, app_full_name, app_name):
    files = ['CMakeLists.txt']
    files_replace(files, app_root_dst, app_full_name, app_name)


def show_result(app_name):
    print("====================================================")
    print("project is created at: build/" + app_name)
    print("to build: ")
    print("  cd build/" + app_name + " && ./generate-project.sh")
    print("  open Xcode/awtk.xcodeproj")
    print("====================================================")


def create_project(config, app_root_src):
    app_name = config_get_app_name(config)
    app_full_name = config_get_app_full_name(config)
    app_root_dst = join_path(BUILD_DIR, app_name)

    copy_folder(TEMPLATE_DIR, app_root_dst)
    rename_files_content(app_root_dst, app_full_name, app_name)

    copy_awtk_files(join_path(app_root_dst, 'src/awtk'))
    copy_app_sources(config, join_path(app_root_dst, 'src/app'), app_root_src)
    copy_app_assets(config, join_path(
        app_root_dst, 'assets/default/raw'), app_root_src)
    set_cmake_includes(config, join_path(app_root_dst, "awtk_source.mk"))

    show_result(app_name)


app_json = ''
if len(sys.argv) < 2:
    show_usage()
else:
    app_json = os.path.abspath(sys.argv[1])

with open(app_json, 'r') as load_f:
    config = merge_and_check_config(json.load(load_f), 'ios')
    create_project(config, os.path.dirname(app_json))
