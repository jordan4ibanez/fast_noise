import std.stdio;
import std.random;
import fast_noise;



void main() {
    // This is an example on how to use the library
    FNLState noise = fnlCreateState();
    noise.seed = unpredictableSeed();
    noise.noise_type = FNLNoiseType.FNL_NOISE_PERLIN;
    writeln("Begin perlin noise:");
    for (float i = 0; i < 100; i++) {
        float test = fnlGetNoise3D(&noise, 0,i,0);
        writeln("noise: ", test);
    }

    // You can also initialize it with a seed
    FNLState moreNoise = fnlCreateState(unpredictableSeed());
    moreNoise.noise_type = FNLNoiseType.FNL_NOISE_OPENSIMPLEX2;
    writeln("Begin OpenSimplex2 noise:");
    for (float i = 0; i < 100; i++) {
        float test = fnlGetNoise3D(&moreNoise, 0,i,0);
        writeln("noise: ", test);
    }

}