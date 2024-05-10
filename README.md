<img src="https://raw.githubusercontent.com/AnonLinuxOS/.github/main/logo_96dpi.png" width=192>

---

KOLOS is an immutable Linux distribution for handheld gaming devices developed by a small community of enthusiasts. Our goal was to produce an operating system that has the features and capabilities that we need, and to have fun as we develop it.

<table>
  <tr>
    <td><img src="https://i.imgur.com/7xTtsu0.png"/></td>
  </tr>
</table>

## Project Inception

KOLOS is a fork of [JELOS](https://github.com/JustEnoughLinuxOS), its goal is to provide a LTS ([Long-term support](https://en.wikipedia.org/wiki/Long-term_support)) version for RK3566 devices ([Anbernic](https://anbernic.com/) RG353P/M/V/VS, RG503, [Powkiddy](https://powkiddy.com/) RK2023, RGB30, RGB10 and Max 3) based from the time the upstream project was archived (May 8th 2024) by [fewtarius](https://github.com/fewtarius).

All licenses apply and credit goes to the [JELOS team](https://github.com/JustEnoughLinuxOS/distribution/graphs/contributors) for the original work.

## How To Build

    docker build -t kolos-build .
    make docker-RK3566

In case you want to modify KOLOS you can also [build a single package](https://github.com/JustEnoughLinuxOS/distribution/blob/c746e283a9f63bb4ec93583a8fc3aa23f3fec3b0/documentation/DEVEL_BUILDING_JELOS.md#building-a-single-package) from within the docker container.

    DEVICE_ROOT=RK3566 PROJECT=Rockchip DEVICE=RK3566 ARCH=aarch64 ./scripts/clean
    DEVICE_ROOT=RK3566 PROJECT=Rockchip DEVICE=RK3566 ARCH=aarch64 ./scripts/build
