# DCS测试框架项目

## 一、用途

该项目仅用于做普通的测试框架讲解

## 二、逻辑

代码main.py实现了一个fab_ratio函数，

该函数在斐波那契数列中，计算n轮后前一个数与后一个数的比值

该比值将无限接近于黄金比例（约等于0.618）

## 三、验证

执行python src/main.py 多次，分别传入1、2、10，会得到不同的数字。

结果与传入值的关系如下：

| 命令行               | 值              |
| ----------------- | -------------- |
| python main.py 1  | 0.5            |
| python main.py 2  | 0.66666666     |
| python main.py 10 | 0.618055555556 |

## 四、使用RobotFramework验证

```Bash
pip install -r requirements.txt
robot tests/test.robot
```

## 五、 基于RobotFramework的Docker测试容器

镜像地址：daocloud.io/dc_pokeman/robotframework:master

