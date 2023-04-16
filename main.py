import xml.etree.ElementTree as ET
import os
import numpy as np

# 定义类别列表和类别索引字典
class_list = ['chunjian', 'chunlan', 'dahuahuilan','hanlan','huilan','hutoulan','jianlan','lianbanlan',
              'molan','zajiaolan']
class_dict = {class_list[i]: i for i in range(len(class_list))}

# 定义输入和输出文件夹路径
in_dir = "val_label_XML"
out_dir = "outdir_val"

# 列出输入文件夹中的所有 XML 文件
xml_files = os.listdir(in_dir)
xml_files = [f for f in xml_files if f.endswith('.xml')]

# 遍历 XML 文件列表
for xml_file in xml_files:
    # 解析 XML 文件
    tree = ET.parse(os.path.join(in_dir, xml_file))
    root = tree.getroot()

    # 获取图片尺寸
    size = root.find('size')
    width = int(size.find('width').text)
    height = int(size.find('height').text)

    # 遍历每一个物体
    for obj in root.iter('object'):
        # 获取类别名称和边界框位置
        cls_name = obj.find('name').text
        x_min = int(obj.find('bndbox/xmin').text)
        y_min = int(obj.find('bndbox/ymin').text)
        x_max = int(obj.find('bndbox/xmax').text)
        y_max = int(obj.find('bndbox/ymax').text)

        # 转换边界框位置为 yolo 格式：中心点坐标、宽度、高度
        x_center = (x_min + x_max) / 2 / width
        y_center = (y_min + y_max) / 2 / height
        w = (x_max - x_min) / width
        h = (y_max - y_min) / height

        # 将类别名称转换成类别索引
        cls_idx = class_dict.get(cls_name, -1)
        if cls_idx == -1:
            continue  # 忽略不在类别列表中的物体

        # 构造 yolo txt 格式字符串
        txt_str = f"{cls_idx} {x_center:.6f} {y_center:.6f} {w:.6f} {h:.6f}\n"

        # 写入 yolo txt 文件
        txt_file_name = os.path.splitext(xml_file)[0] + ".txt"
        with open(os.path.join(out_dir, txt_file_name), "a") as f:
            f.write(txt_str)
