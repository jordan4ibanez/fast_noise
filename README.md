# fast_noise D
 Fast Portable Noise Library. Translated to D.

 You can see the original C file here:
 
 https://github.com/Auburn/FastNoiseLite/blob/master/C/FastNoiseLite.h

 Check out the original repo here:

 https://github.com/Auburn/FastNoiseLite

## A small example on how to use the library:

```d
import std.stdio;
import std.random;
import fast_noise;

void main() {
    // This is an example on how to use the library
    FNLState noise = fnlCreateState();
    noise.seed = unpredictableSeed();
    noise.noise_type = FNLNoiseType.FNL_NOISE_PERLIN;
    writeln("Begin perlin noise:");
    for (double i = 0; i < 100; i++) {
        double test = fnlGetNoise3D(&noise, 0,i,0);
        writeln("noise: ", test);
    }

    // You can also initialize it with a seed
    FNLState moreNoise = fnlCreateState(unpredictableSeed());
    moreNoise.noise_type = FNLNoiseType.FNL_NOISE_OPENSIMPLEX2;
    writeln("Begin OpenSimplex2 noise:");
    for (double i = 0; i < 100; i++) {
        double test = fnlGetNoise3D(&moreNoise, 0,i,0);
        writeln("noise: ", test);
    }

}
```