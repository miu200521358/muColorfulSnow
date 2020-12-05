////////////////////////////////////////////////////////////////////////////////////////////////
//
//  muColorfulSnow ver1.00
//  カラフルスノウエフェクト
//  作成: miu (ベース: WorldSnow (そぼろ様))
//
////////////////////////////////////////////////////////////////////////////////////////////////
// パラメータ宣言

// テクスチャ
// 同じ種類の柄にしたい場合、同じファイル名を指定して下さい。
#define TEX1_FILENAME "tex/花1.png"
#define TEX2_FILENAME "tex/花2.png"
#define TEX3_FILENAME "tex/花3.png"
#define TEX4_FILENAME "tex/花1.png"
#define TEX5_FILENAME "tex/花2.png"

// テクスチャ別色相
// テクスチャ別に色を指定したい場合、粒子色相のルールに従って指定して下さい。
// またはコントローラーやParticleHueの色に準じる場合、全てに0を指定して下さい。
#define TEX1_HUE 0
#define TEX2_HUE 0
#define TEX3_HUE 0
#define TEX4_HUE 0
#define TEX5_HUE 0

//粒子色相
// 0: 色相ランダム
// ～1: 赤-橙(0.1)-黄(0.16)-緑(0.3)-水(0.5)-青(0.6)-紫(0.75)-桃(0.85)-赤(1)
float ParticleHue
<
   string UIName = "ParticleHue";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 0;
   int UIMax = 1;
> = 0;

//粒子彩度
// 0: 彩度ランダム
// ～1: 値が大きいほど彩度が強くなる（鮮やかになる）
float ParticleSaturation
<
   string UIName = "ParticleSaturation";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 0;
   int UIMax = 1;
> = 0.4;

//粒子明度
// 0: 明度ランダム
// ～1: 値が大きいほど明度が強くなる(淡くなる)
float ParticleValue
<
   string UIName = "ParticleValue";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 0;
   int UIMax = 1;
> = 1;

//粒子表示数
int count
<
   string UIName = "count";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 1;
   int UIMax = 30000;
> = 4000;

//表示領域
float AreaSize
<
   string UIName = "AreaSize";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 50;
   int UIMax = 2000;
> = 350;

//落下方向
//0: 上から下, 0.25: 下から上, 0.5: 左から右, 0.75: 右から左
float Direction
<
   string UIName = "Direction";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 1;
> = 0;

//落下速度
float Speed
<
   string UIName = "Speed";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 250.0;
> = 1;

//パーティクルサイズ
float ParticleSize
<
   string UIName = "ParticleSize";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 30.0;
> = 20.0;

//落下軌道のゆらぎ
float NoizeLevel
<
   string UIName = "NoizeLevel";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 4.0;
> = 3;

//ゆらぎ速度
float NoizeSpeed
<
   string UIName = "NoizeSpeed";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 4.0;
> = 0.5;

//テクスチャの回転制限
//0: 回転しない　～ 0.5: 半円分だけ回転 ～　1:360度回転
float RotationLimit
<
   string UIName = "RotationLimit";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 1;

//テクスチャの回転速度
float RotationSpeed
<
   string UIName = "RotationSpeed";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 20.0;
> = 2;

//回転ゆらぎ
float RotationNoize
<
   string UIName = "RotationNoize";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 3.0;
> = 0.2;


//サイズゆらぎ
float Flicker
<
   string UIName = "Flicker";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 1;

//サイズゆらぎ速度
float FlickerSpeed
<
   string UIName = "FlickerSpeed";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 0.6;

//ブラー
float Blur
<
   string UIName = "Blur";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 0.0;

//透過
float Transparent
<
   string UIName = "Transparent";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 0;

//強調
float AlphaAppend
<
   string UIName = "AlphaAppend";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 4.0;
> = 3;


// 解らない人はここから下はいじらないでください
////////////////////////////////////////////////////////////////////////////////////////////////

//パーティクルテクスチャ
texture2D Tex1 <
    string ResourceName = TEX1_FILENAME;
    int MipLevels = 0;
>;
sampler Tex1Samp = sampler_state {
    texture = <Tex1>;
    MINFILTER = ANISOTROPIC;
    MAGFILTER = ANISOTROPIC;
    MIPFILTER = LINEAR;
    AddressU  = Clamp;
    AddressV = Clamp;
    MAXANISOTROPY = 16;
};

texture2D Tex2 <
    string ResourceName = TEX2_FILENAME;
    int MipLevels = 0;
>;
sampler Tex2Samp = sampler_state {
    texture = <Tex2>;
    MINFILTER = ANISOTROPIC;
    MAGFILTER = ANISOTROPIC;
    MIPFILTER = LINEAR;
    AddressU  = Clamp;
    AddressV = Clamp;
    MAXANISOTROPY = 16;
};

texture2D Tex3 <
    string ResourceName = TEX3_FILENAME;
    int MipLevels = 0;
>;
sampler Tex3Samp = sampler_state {
    texture = <Tex3>;
    MINFILTER = ANISOTROPIC;
    MAGFILTER = ANISOTROPIC;
    MIPFILTER = LINEAR;
    AddressU  = Clamp;
    AddressV = Clamp;
    MAXANISOTROPY = 16;
};

texture2D Tex4 <
    string ResourceName = TEX4_FILENAME;
    int MipLevels = 0;
>;
sampler Tex4Samp = sampler_state {
    texture = <Tex4>;
    MINFILTER = ANISOTROPIC;
    MAGFILTER = ANISOTROPIC;
    MIPFILTER = LINEAR;
    AddressU  = Clamp;
    AddressV = Clamp;
    MAXANISOTROPY = 16;
};

texture2D Tex5 <
    string ResourceName = TEX5_FILENAME;
    int MipLevels = 0;
>;
sampler Tex5Samp = sampler_state {
    texture = <Tex5>;
    MINFILTER = ANISOTROPIC;
    MAGFILTER = ANISOTROPIC;
    MIPFILTER = LINEAR;
    AddressU  = Clamp;
    AddressV = Clamp;
    MAXANISOTROPY = 16;
};

//乱数テクスチャ
texture2D rndtex <
    string ResourceName = "tex/random256x256.bmp";
>;
sampler rnd = sampler_state {
    texture = <rndtex>;
    MINFILTER = NONE;
    MAGFILTER = NONE;
};

//乱数テクスチャサイズ
#define RNDTEX_WIDTH  256
#define RNDTEX_HEIGHT 256


float alpha1 : CONTROLOBJECT < string name = "(self)"; string item = "Tr"; >;
float size1 : CONTROLOBJECT < string name = "(self)"; string item = "Si"; >;
static float size = size1 * 0.1;

float ftime : TIME <bool SyncInEditMode = false;>;

float4x4 matWorld : CONTROLOBJECT < string name = "(self)"; >; 
static float pos_y = matWorld._42;
static float pos_z = matWorld._43;

// 座法変換行列
float4x4 WorldMatrix : WORLD;
float4x4 ViewProjMatrix    : VIEWPROJECTION;
float4x4 WorldViewProjMatrix    : WORLDVIEWPROJECTION;

float4x4 WorldMatrixInverse : WORLDINVERSE;
float4x4 ViewMatrixInverse : VIEWINVERSE;
float4x4 WorldViewMatrixInverse : WORLDVIEWINVERSE;

float4x4 LightWorldViewProjMatrix : WORLDVIEWPROJECTION < string Object = "Light"; >;


static float3x3 BillboardMatrix = {
    normalize(ViewMatrixInverse[0].xyz),
    normalize(ViewMatrixInverse[1].xyz),
    normalize(ViewMatrixInverse[2].xyz),
};

static float3x3 RotMatrix = {
    normalize(WorldMatrix[0].xyz),
    normalize(WorldMatrix[1].xyz),
    normalize(WorldMatrix[2].xyz),
};
static float3x3 RotMatrixInverse = {
    normalize(WorldMatrixInverse[0].xyz),
    normalize(WorldMatrixInverse[1].xyz),
    normalize(WorldMatrixInverse[2].xyz),
};

float3 CameraDirection : DIRECTION < string Object = "Camera"; >;
float3 CameraPosition : POSITION  < string Object = "Camera"; >;


// Controller対応 ////////////////////////////////////////////////////////////

bool flag1 : CONTROLOBJECT < string name = "WorldParticleController.pmx"; >;
//bool flag1 = false;

float count_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "粒子数"; >;
float AreaSize_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "領域広さ"; >;

float Direction_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "落下方向"; >;
float Speed_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "落下速度"; >;
float ParticleSize_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "粒子ｻｲｽﾞ"; >;
float NoizeLevel_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "ゆらぎ"; >;

float NoizeSpeed_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "ゆれ速度"; >;
float RotationSpeed_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "回転速度"; >;
float RotationLimit_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "回転制限"; >;
float RotationNoize_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "回転ゆれ"; >;
float Flicker_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "ｻｲｽﾞゆれ"; >;

float Blur_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "ブラー"; >;

float TextureSelect : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "ﾃｸｽﾁｬ"; >;
float Transparent_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "透過"; >;
float AlphaAppend_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "強調"; >;

float ParticleHue_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "色相"; >;
float ParticleSaturation_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "彩度"; >;
float ParticleValue_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "明度"; >;


static float count_m = flag1 ? (count_e * 30000) : count;
static float AreaSize_m = flag1 ? (AreaSize_e * 1000) : AreaSize;

static float Direction_m = flag1 ? (Direction_e) : Direction;
static float Speed_m = flag1 ? (Speed_e * Speed_e * 300) : Speed;
static float ParticleSize_m = (flag1 ? (ParticleSize_e * ParticleSize_e * 100) : ParticleSize) * size;
static float NoizeLevel_m = flag1 ? (NoizeLevel_e * 4) : NoizeLevel;
static float Flicker_m = flag1 ? (Flicker_e * 1) : Flicker;

static float NoizeSpeed_m = flag1 ? (NoizeSpeed_e * 5) : NoizeSpeed;
static float RotationLimit_m = flag1 ? RotationLimit_e : RotationLimit;
static float RotationSpeed_m = flag1 ? (RotationSpeed_e * 10) : RotationSpeed;
static float RotationNoize_m = flag1 ? RotationNoize_e : RotationNoize;
static float Blur_m = flag1 ? Blur_e : Blur;
static float Transparent_m = flag1 ? Transparent_e : Transparent;
static float AlphaAppend_m = flag1 ? (AlphaAppend_e * 4) : AlphaAppend;


// 表示領域中心
static float3 AreaCenter = CameraPosition + CameraDirection * AreaSize_m / 4;
static float3 AreaCenterT = AreaCenter / AreaSize_m;



///////////////////////////////////////////////////////////////////////////////////////////////

//乱数取得
float4 getRandom(float rindex)
{
    float2 tpos = float2(rindex % RNDTEX_WIDTH, trunc(rindex / RNDTEX_WIDTH));
    tpos += float2(0.5, 0.5);
    tpos /= float2(RNDTEX_WIDTH, RNDTEX_HEIGHT);
    return tex2Dlod(rnd, float4(tpos,0,0));
}

///////////////////////////////////////////////////////////////////////////////////////////////
// ゲーミング色生成処理

// https://www.chilliant.com/rgb2hsv.html
float3 HUEtoRGB(in float H)
{
    float R = abs(H * 6 - 3) - 1;
    float G = 2 - abs(H * 6 - 2);
    float B = 2 - abs(H * 6 - 4);
    return saturate(float3(R,G,B));
}

float3 HSVtoRGB(in float3 HSV)
{
    float3 RGB = HUEtoRGB(HSV.x);
    return ((RGB - 1) * HSV.y + 1) * HSV.z;
}

// ランダム色取得
float4 getRandomRGB(float rindex)
{
    // 一旦値を大きくした後、余りで指定段階に分割して、HSVを生成
    // コントローラーのあるなしでちらちら度合いが変わるので、とりあえず分離
    float4 rnd_h = getRandom(((flag1) ? int(rindex) * 10 : rindex * 10011));
    float4 rnd_s = getRandom(((flag1) ? int(rindex) * 10 : rindex * 10011));
    float4 rnd_v = getRandom(((flag1) ? int(rindex) * 10 : rindex * 10011));
    float3 hsv = (float3)0;

    float index = rindex * 10 % 5;
    float hue = (flag1) ? ParticleHue_e : ParticleHue;

    if (hue == 0) {
        // 基本ランダム指定がある場合のみ下記判定に入る
        // テクスチャ別色指定がある場合、それを採用
        if (TEX1_HUE > 0 && index < 1) {
            hue = TEX1_HUE;
        }
        else if (TEX2_HUE > 0 && index < 2) {
            hue = TEX2_HUE;
        }
        else if (TEX3_HUE > 0 && index < 3) {
            hue = TEX3_HUE;
        }
        else if (TEX4_HUE > 0 && index < 4) {
            hue = TEX4_HUE;
        }
        else if (TEX5_HUE > 0 && index < 5) {
            hue = TEX5_HUE;
        }
        else {
            // どれも当てはまらない場合、完全ランダム
            hue = rnd_h.x;
        }
    }
    hsv.x = hue;
    
    // 0以下マイナス値の場合、乱数採用（0の場合、乱数のみ）
    // プラス値の場合、固定値としてそのまま採用
    // コントローラーが認識されている場合、コントローラーの値を取得
    if (flag1) {
        hsv.y = (ParticleSaturation_e <= 0)  ? rnd_s.x : ParticleSaturation_e;
        hsv.z = (ParticleValue_e <= 0)       ? rnd_v.x : ParticleValue_e;
    }
    else {
        hsv.y = (ParticleSaturation <= 0)    ? rnd_s.x : ParticleSaturation;
        hsv.z = (ParticleValue <= 0)         ? rnd_v.x : ParticleValue;
    }

    // HSVをRGBに変換
    float3 rgb = HSVtoRGB(hsv);
    
    return float4(rgb, 0);
}


///////////////////////////////////////////////////////////////////////////////////////////////

//粒子位置決定関数
float4 getParticlePos(float index, float time){
    
    // ランダム配置
    float4 base_pos = getRandom(index);
    
    //落下
    base_pos.y = frac(base_pos.y - (Speed_m * time / AreaSize_m));
    
    //ノイズ付加
    float stime = time * NoizeSpeed_m;
    base_pos.x += (sin(stime * 0.8 + index) + cos(stime * 0.5 + index) * 0.5) * (NoizeLevel_m / AreaSize_m);
    base_pos.z += (sin(stime * 0.45 + index) * 0.6 + cos(stime * 0.9 + index) * 0.8) * (NoizeLevel_m / AreaSize_m);
    
    //領域変更
    float3 rotinvcenter = mul(AreaCenterT, RotMatrixInverse);
    base_pos.xyz -= rotinvcenter;
    float3 inner_pos = frac(base_pos.xyz); //領域内座標
    inner_pos -= 0.5;
    base_pos.xyz = inner_pos + rotinvcenter;
    
    //領域サイズ変更
    base_pos.xyz *= AreaSize_m;
    
    // 方向が決まった後の位置
    float4 direction_pos = (float4)0;

    //回転
    base_pos.xyz = mul(base_pos.xyz, RotMatrix);

    // 方向に合わせて向きを変える
    if (Direction_m < 0.25) {
        direction_pos.x = base_pos.x;
        direction_pos.y = base_pos.y;
        direction_pos.z = base_pos.z;
    }
    else if (Direction_m < 0.5) {
        direction_pos.x = base_pos.x;
        direction_pos.y = base_pos.y * -1;
        direction_pos.z = base_pos.z;
    }
    else if (Direction_m < 0.75) {
        direction_pos.x = base_pos.y;
        direction_pos.y = base_pos.x;
        direction_pos.z = base_pos.z;
    }
    else {
        direction_pos.x = base_pos.y * -1;
        direction_pos.y = base_pos.x;
        direction_pos.z = base_pos.z;
    }
    
    return direction_pos;
}

///////////////////////////////////////////////////////////////////////////////////////////////

//粒子フェード関数
float ParticleFade(float4 particle_pos){
    float alpha;
    
    //地面フェード
    alpha = saturate((particle_pos.y - pos_y) * 0.2);
    
    //遠方は薄く
    float fadelen = (AreaSize_m * 0.75);
    float camera_len = length(particle_pos.xyz - CameraPosition.xyz);
    float farfade = saturate((fadelen - camera_len) / fadelen);
    
    farfade = pow(farfade, 0.4);
    //farfade = sqrt(farfade);
    
    alpha *= farfade;
    
    //至近距離は薄く
    alpha *= saturate((camera_len - 10) * 0.05);
    
    return alpha;
}

///////////////////////////////////////////////////////////////////////////////////////////////

struct VS_OUTPUT
{
    float4 Pos        : POSITION;    // 射影変換座標
    float2 Tex        : TEXCOORD0;   // テクスチャ
    float4 TexRot     : TEXCOORD1;   // テクスチャ回転
    float4 ZCalcTex   : TEXCOORD2;   // Z値
    float  Index      : COLOR0;      // 処理INDEX
    float  Alpha      : COLOR1;      // 透明度
};

///////////////////////////////////////////////////////////////////////////////////////////////

// 頂点シェーダ
VS_OUTPUT WPEngine_VS(float4 Pos : POSITION, float2 Tex : TEXCOORD0, uniform bool Shadow)
{
    VS_OUTPUT Out;
    Out.Alpha = 1;
    
    //ポリゴンのZ座標をインデックスとして利用
    float index = Pos.z;
    Pos.z = 0;
    
    //サイズ変更
    float fstime = ftime * FlickerSpeed * NoizeSpeed_m;
    float flicker = (sin(fstime * 5 + index) * 0.5 + 0.5) + (cos(fstime * 2.3 + index) * 0.5 + 0.5) * 0.5;
    
    flicker = lerp(1, flicker, Flicker_m);
    
    Pos.xy *= ParticleSize_m * flicker;
    
    // ビルボード化
    Pos.xyz = mul( Pos.xyz, BillboardMatrix );
    
    //パーティクル座標の取得
    float4 particle_pos = getParticlePos(index, ftime);
    
    Pos.xyz += particle_pos.xyz;
    
    //表示上限より上のパーティクルは隠す
    Pos.z -= (index >= count_m) * 100000;
    
    // カメラ視点のビュー射影変換
    Out.Pos = mul( Pos, ViewProjMatrix );
    
    //アルファ適用
    Out.Alpha *= ParticleFade(particle_pos);
    Out.Alpha *= alpha1 * (1 - Transparent_m);
    Out.Alpha *= 1 + AlphaAppend_m;
    
    // テクスチャ座標
    Out.Tex = Tex;
    
    //回転単位ベクトルの作成
    float rot = ftime * RotationSpeed_m * (1 - (sin(index) * RotationNoize_m)) + index * 6;
    // 回転制限よりは多く回さない
    Out.TexRot.xy = float2(lerp(1, cos(rot), RotationLimit_m), lerp(0, sin(rot), RotationLimit_m)); //Ut
    Out.TexRot.zw = float2(-lerp(0, sin(rot), RotationLimit_m), lerp(1, cos(rot), RotationLimit_m)); //Vt
    
    if(Shadow){
        // ライト視点によるワールドビュー射影変換
        float4 uwpos = Pos;
        uwpos.xyz /= size1;
        uwpos.xyz = mul(uwpos.xyz, RotMatrixInverse);
        Out.ZCalcTex = mul( uwpos, LightWorldViewProjMatrix );
        
    }else{
        Out.ZCalcTex = 0;
    }
    
    // index保持
    Out.Index = index / 1000;
    
    return Out;
}

///////////////////////////////////////////////////////////////////////////////////////////////

// ピクセルシェーダ
float4 WPEngine_PS( VS_OUTPUT input ) : COLOR0
{
    // UVの座標変換
    float2 tex = input.Tex - 0.5;
    tex = input.TexRot.xy * tex.x + input.TexRot.zw * tex.y;
    tex *= 2;
    tex += 0.5;
    
    // 順番にテクスチャ適用
    float index = input.Index * 10 % 5;
    float4 color = (index < 1) ? tex2D( Tex1Samp, tex ) : ((index < 2) ? tex2D( Tex2Samp, tex ) : ((index < 3) ? tex2D( Tex3Samp, tex ) : ((index < 4) ? tex2D( Tex4Samp, tex ) : tex2D( Tex5Samp, tex ))));
    
    // ゲーミングRGB取得
    float4 rnd_rgb = getRandomRGB(input.Index);
    color.rgb = rnd_rgb.rgb;
    color.a *= input.Alpha;
    
    //color = float4(1,1,1,1);
    
    return color;
}

///////////////////////////////////////////////////////////////////////////////////////////////

// シャドウバッファのサンプラ
sampler DefSampler : register(s0);

// ピクセルシェーダ(シャドウ版)
float4 WPEngine_S_PS( VS_OUTPUT input ) : COLOR0
{
    // UVの座標変換
    float2 tex = input.Tex - 0.5;
    tex = input.TexRot.xy * tex.x + input.TexRot.zw * tex.y;
    tex *= 2;
    tex += 0.5;
    
    // 順番にテクスチャ適用
    float index = input.Index * 10 % 5;
    float4 color = (index < 1) ? tex2D( Tex1Samp, tex ) : ((index < 2) ? tex2D( Tex2Samp, tex ) : ((index < 3) ? tex2D( Tex3Samp, tex ) : ((index < 4) ? tex2D( Tex4Samp, tex ) : tex2D( Tex5Samp, tex ))));
    
    // ゲーミングRGB取得
    float4 rnd_rgb = getRandomRGB(input.Index);
    color.rgb = rnd_rgb.rgb;
    color.a *= input.Alpha;
    
    //シャドウ対応 -------------------
    
    float light = 1;
    float darklight = 0.3;
    
    // テクスチャ座標に変換
    input.ZCalcTex /= input.ZCalcTex.w;
    float2 TransTexCoord;
    TransTexCoord = 0.5 + (input.ZCalcTex.xy * float2(0.5, -0.5));
    
    if( any( saturate(TransTexCoord) != TransTexCoord ) ) {
        light = darklight;
    } else {
        light = (input.ZCalcTex.z >= tex2D(DefSampler,TransTexCoord).r) ? darklight : 1;
    }
    
    color *= light;
    
    return color;
}

///////////////////////////////////////////////////////////////////////////////////////////////

technique MainTec < string MMDPass = "object"; > {
    pass DrawObject {
        ZWRITEENABLE = false; //Zバッファを更新しない
        
        //ここのコメントアウトを外せば加算合成に
        //SRCBLEND=ONE;
        //DESTBLEND=ONE;
        
        VertexShader = compile vs_3_0 WPEngine_VS(false);
        PixelShader  = compile ps_3_0 WPEngine_PS();
    }
}

technique MainTec2 < string MMDPass = "object_ss"; > {
    pass DrawObject {
        ZWRITEENABLE = false; //Zバッファを更新しない
        
        //ここのコメントアウトを外せば加算合成に
        //SRCBLEND=ONE;
        //DESTBLEND=ONE;
        
        VertexShader = compile vs_3_0 WPEngine_VS(true);
        PixelShader  = compile ps_3_0 WPEngine_S_PS();
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////
// セルフシャドウ用Z値プロット

struct VS_ZValuePlot_OUTPUT {
    float4 Pos : POSITION;              // 射影変換座標
    float4 ShadowMapTex : TEXCOORD0;    // Zバッファテクスチャ
};

// 頂点シェーダ
VS_ZValuePlot_OUTPUT ZValuePlot_VS( float4 Pos : POSITION )
{
    VS_ZValuePlot_OUTPUT Out = (VS_ZValuePlot_OUTPUT)0;

    // ライトの目線によるワールドビュー射影変換をする
    Out.Pos = mul( Pos, LightWorldViewProjMatrix );

    // テクスチャ座標を頂点に合わせる
    Out.ShadowMapTex = Out.Pos;

    return Out;
}

// ピクセルシェーダ
float4 ZValuePlot_PS( float4 ShadowMapTex : TEXCOORD0 ) : COLOR
{
    // R色成分にZ値を記録する
    return float4(ShadowMapTex.z/ShadowMapTex.w,0,0,1);
}

// Z値プロット用テクニック
technique ZplotTec < string MMDPass = "zplot"; > {
    /*pass ZValuePlot {
        AlphaBlendEnable = FALSE;
        VertexShader = compile vs_2_0 ZValuePlot_VS();
        PixelShader  = compile ps_2_0 ZValuePlot_PS();
    }*/
}

// 地面影なし
technique ShadowTec < string MMDPass = "shadow"; > { }