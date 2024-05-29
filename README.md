<img src="https://raw.githubusercontent.com/AnonLinuxOS/.github/main/logo_96dpi.png" width=192>

---

KOLOS is an immutable Linux distribution for handheld gaming devices developed by a small community of enthusiasts. Our goal is to produce an operating system that has the features and capabilities that we need, and to have fun as we develop it.

<table>
  <tr>
    <td><img src="https://i.imgur.com/7xTtsu0.png"/></td>
  </tr>
</table>

## Project Inception

KOLOS is a fork of [JELOS](https://github.com/JustEnoughLinuxOS), its goal is to provide a LTS ([Long-term support](https://en.wikipedia.org/wiki/Long-term_support)) version for RK3566 devices ([Anbernic](https://anbernic.com/) RG353P/M/V/VS, RG503, [Powkiddy](https://powkiddy.com/) RK2023, RGB30, RGB10 and Max 3) based from the latest stable release of the upstream project for those devices (20240206).

All licenses apply and credit goes to the [JELOS team](https://github.com/JustEnoughLinuxOS/distribution/graphs/contributors) for the original work.

## Download

You can download our latest release at [https://github.com/AnonLinuxOS/KOLOS/releases](https://github.com/AnonLinuxOS/KOLOS/releases).

## Install

    gunzip -c KOLOS-RK3566.aarch64-*.img.gz | sudo dd of=/dev/<THINK_TWICE> bs=8M oflag=sync,direct status=progress

## Update

You can update from JELOS using the tar file, simply place it in the `.update` folder of your storage and reboot.

*WARNING*: If you did install ROCKNIX or JELOS 20240310 we recommend you to [install from scratch and reset your battery](https://www.reddit.com/r/PowKiddy/comments/1bvptnc/rgb30_rebooting_instead_of_shutting_down/).

## How To Build

    docker build -t kolos-build .
    make docker-RK3566

In case you want to modify KOLOS you can also [build a single package](https://github.com/JustEnoughLinuxOS/distribution/blob/c746e283a9f63bb4ec93583a8fc3aa23f3fec3b0/documentation/DEVEL_BUILDING_JELOS.md#building-a-single-package) from within the docker container.

    DEVICE_ROOT=RK3566 PROJECT=Rockchip DEVICE=RK3566 ARCH=aarch64 ./scripts/clean
    DEVICE_ROOT=RK3566 PROJECT=Rockchip DEVICE=RK3566 ARCH=aarch64 ./scripts/build

To ensure a fully hermetic build you might want to add the following flags.

    THREADCOUNT=4 CCACHE_DISABLE=yes make RK3566

## Credits

Like any Linux distribution, this project is not the work of one person.  It is the work of many persons all over the world who have developed the open source bits without which this project could not exist.  Special thanks to CoreELEC, LibreELEC, and to developers and contributors across the open source community.
