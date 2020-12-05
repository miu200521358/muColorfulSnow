////////////////////////////////////////////////////////////////////////////////////////////////
//
//  muColorfulSnow ver1.00
//  �J���t���X�m�E�G�t�F�N�g
//  �쐬: miu (�x�[�X: WorldSnow (���ڂ�l))
//
////////////////////////////////////////////////////////////////////////////////////////////////
// �p�����[�^�錾

// �e�N�X�`��
// ������ނ̕��ɂ������ꍇ�A�����t�@�C�������w�肵�ĉ������B
#define TEX1_FILENAME "tex/��1.png"
#define TEX2_FILENAME "tex/��2.png"
#define TEX3_FILENAME "tex/��3.png"
#define TEX4_FILENAME "tex/��1.png"
#define TEX5_FILENAME "tex/��2.png"

// �e�N�X�`���ʐF��
// �e�N�X�`���ʂɐF���w�肵�����ꍇ�A���q�F���̃��[���ɏ]���Ďw�肵�ĉ������B
// �܂��̓R���g���[���[��ParticleHue�̐F�ɏ�����ꍇ�A�S�Ă�0���w�肵�ĉ������B
#define TEX1_HUE 0
#define TEX2_HUE 0
#define TEX3_HUE 0
#define TEX4_HUE 0
#define TEX5_HUE 0

//���q�F��
// 0: �F�������_��
// �`1: ��-��(0.1)-��(0.16)-��(0.3)-��(0.5)-��(0.6)-��(0.75)-��(0.85)-��(1)
float ParticleHue
<
   string UIName = "ParticleHue";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 0;
   int UIMax = 1;
> = 0;

//���q�ʓx
// 0: �ʓx�����_��
// �`1: �l���傫���قǍʓx�������Ȃ�i�N�₩�ɂȂ�j
float ParticleSaturation
<
   string UIName = "ParticleSaturation";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 0;
   int UIMax = 1;
> = 0.4;

//���q���x
// 0: ���x�����_��
// �`1: �l���傫���قǖ��x�������Ȃ�(�W���Ȃ�)
float ParticleValue
<
   string UIName = "ParticleValue";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 0;
   int UIMax = 1;
> = 1;

//���q�\����
int count
<
   string UIName = "count";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 1;
   int UIMax = 30000;
> = 4000;

//�\���̈�
float AreaSize
<
   string UIName = "AreaSize";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   int UIMin = 50;
   int UIMax = 2000;
> = 350;

//��������
//0: �ォ�牺, 0.25: �������, 0.5: ������E, 0.75: �E���獶
float Direction
<
   string UIName = "Direction";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 1;
> = 0;

//�������x
float Speed
<
   string UIName = "Speed";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 250.0;
> = 1;

//�p�[�e�B�N���T�C�Y
float ParticleSize
<
   string UIName = "ParticleSize";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 30.0;
> = 20.0;

//�����O���̂�炬
float NoizeLevel
<
   string UIName = "NoizeLevel";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 4.0;
> = 3;

//��炬���x
float NoizeSpeed
<
   string UIName = "NoizeSpeed";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 4.0;
> = 0.5;

//�e�N�X�`���̉�]����
//0: ��]���Ȃ��@�` 0.5: ���~��������] �`�@1:360�x��]
float RotationLimit
<
   string UIName = "RotationLimit";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 1;

//�e�N�X�`���̉�]���x
float RotationSpeed
<
   string UIName = "RotationSpeed";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 20.0;
> = 2;

//��]��炬
float RotationNoize
<
   string UIName = "RotationNoize";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 3.0;
> = 0.2;


//�T�C�Y��炬
float Flicker
<
   string UIName = "Flicker";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 1;

//�T�C�Y��炬���x
float FlickerSpeed
<
   string UIName = "FlickerSpeed";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 0.6;

//�u���[
float Blur
<
   string UIName = "Blur";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 0.0;

//����
float Transparent
<
   string UIName = "Transparent";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 1.0;
> = 0;

//����
float AlphaAppend
<
   string UIName = "AlphaAppend";
   string UIWidget = "Slider";
   bool UIVisible =  true;
   float UIMin = 0.0;
   float UIMax = 4.0;
> = 3;


// ����Ȃ��l�͂������牺�͂�����Ȃ��ł�������
////////////////////////////////////////////////////////////////////////////////////////////////

//�p�[�e�B�N���e�N�X�`��
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

//�����e�N�X�`��
texture2D rndtex <
    string ResourceName = "tex/random256x256.bmp";
>;
sampler rnd = sampler_state {
    texture = <rndtex>;
    MINFILTER = NONE;
    MAGFILTER = NONE;
};

//�����e�N�X�`���T�C�Y
#define RNDTEX_WIDTH  256
#define RNDTEX_HEIGHT 256


float alpha1 : CONTROLOBJECT < string name = "(self)"; string item = "Tr"; >;
float size1 : CONTROLOBJECT < string name = "(self)"; string item = "Si"; >;
static float size = size1 * 0.1;

float ftime : TIME <bool SyncInEditMode = false;>;

float4x4 matWorld : CONTROLOBJECT < string name = "(self)"; >; 
static float pos_y = matWorld._42;
static float pos_z = matWorld._43;

// ���@�ϊ��s��
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


// Controller�Ή� ////////////////////////////////////////////////////////////

bool flag1 : CONTROLOBJECT < string name = "WorldParticleController.pmx"; >;
//bool flag1 = false;

float count_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "���q��"; >;
float AreaSize_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "�̈�L��"; >;

float Direction_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "��������"; >;
float Speed_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "�������x"; >;
float ParticleSize_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "���q����"; >;
float NoizeLevel_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "��炬"; >;

float NoizeSpeed_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "��ꑬ�x"; >;
float RotationSpeed_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "��]���x"; >;
float RotationLimit_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "��]����"; >;
float RotationNoize_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "��]���"; >;
float Flicker_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "���ނ��"; >;

float Blur_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "�u���["; >;

float TextureSelect : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "ø���"; >;
float Transparent_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "����"; >;
float AlphaAppend_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "����"; >;

float ParticleHue_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "�F��"; >;
float ParticleSaturation_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "�ʓx"; >;
float ParticleValue_e : CONTROLOBJECT < string name = "WorldParticleController.pmx"; string item = "���x"; >;


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


// �\���̈撆�S
static float3 AreaCenter = CameraPosition + CameraDirection * AreaSize_m / 4;
static float3 AreaCenterT = AreaCenter / AreaSize_m;



///////////////////////////////////////////////////////////////////////////////////////////////

//�����擾
float4 getRandom(float rindex)
{
    float2 tpos = float2(rindex % RNDTEX_WIDTH, trunc(rindex / RNDTEX_WIDTH));
    tpos += float2(0.5, 0.5);
    tpos /= float2(RNDTEX_WIDTH, RNDTEX_HEIGHT);
    return tex2Dlod(rnd, float4(tpos,0,0));
}

///////////////////////////////////////////////////////////////////////////////////////////////
// �Q�[�~���O�F��������

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

// �����_���F�擾
float4 getRandomRGB(float rindex)
{
    // ��U�l��傫��������A�]��Ŏw��i�K�ɕ������āAHSV�𐶐�
    // �R���g���[���[�̂���Ȃ��ł��炿��x�������ς��̂ŁA�Ƃ肠��������
    float4 rnd_h = getRandom(((flag1) ? int(rindex) * 10 : rindex * 10011));
    float4 rnd_s = getRandom(((flag1) ? int(rindex) * 10 : rindex * 10011));
    float4 rnd_v = getRandom(((flag1) ? int(rindex) * 10 : rindex * 10011));
    float3 hsv = (float3)0;

    float index = rindex * 10 % 5;
    float hue = (flag1) ? ParticleHue_e : ParticleHue;

    if (hue == 0) {
        // ��{�����_���w�肪����ꍇ�̂݉��L����ɓ���
        // �e�N�X�`���ʐF�w�肪����ꍇ�A������̗p
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
            // �ǂ�����Ă͂܂�Ȃ��ꍇ�A���S�����_��
            hue = rnd_h.x;
        }
    }
    hsv.x = hue;
    
    // 0�ȉ��}�C�i�X�l�̏ꍇ�A�����̗p�i0�̏ꍇ�A�����̂݁j
    // �v���X�l�̏ꍇ�A�Œ�l�Ƃ��Ă��̂܂܍̗p
    // �R���g���[���[���F������Ă���ꍇ�A�R���g���[���[�̒l���擾
    if (flag1) {
        hsv.y = (ParticleSaturation_e <= 0)  ? rnd_s.x : ParticleSaturation_e;
        hsv.z = (ParticleValue_e <= 0)       ? rnd_v.x : ParticleValue_e;
    }
    else {
        hsv.y = (ParticleSaturation <= 0)    ? rnd_s.x : ParticleSaturation;
        hsv.z = (ParticleValue <= 0)         ? rnd_v.x : ParticleValue;
    }

    // HSV��RGB�ɕϊ�
    float3 rgb = HSVtoRGB(hsv);
    
    return float4(rgb, 0);
}


///////////////////////////////////////////////////////////////////////////////////////////////

//���q�ʒu����֐�
float4 getParticlePos(float index, float time){
    
    // �����_���z�u
    float4 base_pos = getRandom(index);
    
    //����
    base_pos.y = frac(base_pos.y - (Speed_m * time / AreaSize_m));
    
    //�m�C�Y�t��
    float stime = time * NoizeSpeed_m;
    base_pos.x += (sin(stime * 0.8 + index) + cos(stime * 0.5 + index) * 0.5) * (NoizeLevel_m / AreaSize_m);
    base_pos.z += (sin(stime * 0.45 + index) * 0.6 + cos(stime * 0.9 + index) * 0.8) * (NoizeLevel_m / AreaSize_m);
    
    //�̈�ύX
    float3 rotinvcenter = mul(AreaCenterT, RotMatrixInverse);
    base_pos.xyz -= rotinvcenter;
    float3 inner_pos = frac(base_pos.xyz); //�̈�����W
    inner_pos -= 0.5;
    base_pos.xyz = inner_pos + rotinvcenter;
    
    //�̈�T�C�Y�ύX
    base_pos.xyz *= AreaSize_m;
    
    // ���������܂�����̈ʒu
    float4 direction_pos = (float4)0;

    //��]
    base_pos.xyz = mul(base_pos.xyz, RotMatrix);

    // �����ɍ��킹�Č�����ς���
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

//���q�t�F�[�h�֐�
float ParticleFade(float4 particle_pos){
    float alpha;
    
    //�n�ʃt�F�[�h
    alpha = saturate((particle_pos.y - pos_y) * 0.2);
    
    //�����͔���
    float fadelen = (AreaSize_m * 0.75);
    float camera_len = length(particle_pos.xyz - CameraPosition.xyz);
    float farfade = saturate((fadelen - camera_len) / fadelen);
    
    farfade = pow(farfade, 0.4);
    //farfade = sqrt(farfade);
    
    alpha *= farfade;
    
    //���ߋ����͔���
    alpha *= saturate((camera_len - 10) * 0.05);
    
    return alpha;
}

///////////////////////////////////////////////////////////////////////////////////////////////

struct VS_OUTPUT
{
    float4 Pos        : POSITION;    // �ˉe�ϊ����W
    float2 Tex        : TEXCOORD0;   // �e�N�X�`��
    float4 TexRot     : TEXCOORD1;   // �e�N�X�`����]
    float4 ZCalcTex   : TEXCOORD2;   // Z�l
    float  Index      : COLOR0;      // ����INDEX
    float  Alpha      : COLOR1;      // �����x
};

///////////////////////////////////////////////////////////////////////////////////////////////

// ���_�V�F�[�_
VS_OUTPUT WPEngine_VS(float4 Pos : POSITION, float2 Tex : TEXCOORD0, uniform bool Shadow)
{
    VS_OUTPUT Out;
    Out.Alpha = 1;
    
    //�|���S����Z���W���C���f�b�N�X�Ƃ��ė��p
    float index = Pos.z;
    Pos.z = 0;
    
    //�T�C�Y�ύX
    float fstime = ftime * FlickerSpeed * NoizeSpeed_m;
    float flicker = (sin(fstime * 5 + index) * 0.5 + 0.5) + (cos(fstime * 2.3 + index) * 0.5 + 0.5) * 0.5;
    
    flicker = lerp(1, flicker, Flicker_m);
    
    Pos.xy *= ParticleSize_m * flicker;
    
    // �r���{�[�h��
    Pos.xyz = mul( Pos.xyz, BillboardMatrix );
    
    //�p�[�e�B�N�����W�̎擾
    float4 particle_pos = getParticlePos(index, ftime);
    
    Pos.xyz += particle_pos.xyz;
    
    //�\���������̃p�[�e�B�N���͉B��
    Pos.z -= (index >= count_m) * 100000;
    
    // �J�������_�̃r���[�ˉe�ϊ�
    Out.Pos = mul( Pos, ViewProjMatrix );
    
    //�A���t�@�K�p
    Out.Alpha *= ParticleFade(particle_pos);
    Out.Alpha *= alpha1 * (1 - Transparent_m);
    Out.Alpha *= 1 + AlphaAppend_m;
    
    // �e�N�X�`�����W
    Out.Tex = Tex;
    
    //��]�P�ʃx�N�g���̍쐬
    float rot = ftime * RotationSpeed_m * (1 - (sin(index) * RotationNoize_m)) + index * 6;
    // ��]�������͑����񂳂Ȃ�
    Out.TexRot.xy = float2(lerp(1, cos(rot), RotationLimit_m), lerp(0, sin(rot), RotationLimit_m)); //Ut
    Out.TexRot.zw = float2(-lerp(0, sin(rot), RotationLimit_m), lerp(1, cos(rot), RotationLimit_m)); //Vt
    
    if(Shadow){
        // ���C�g���_�ɂ�郏�[���h�r���[�ˉe�ϊ�
        float4 uwpos = Pos;
        uwpos.xyz /= size1;
        uwpos.xyz = mul(uwpos.xyz, RotMatrixInverse);
        Out.ZCalcTex = mul( uwpos, LightWorldViewProjMatrix );
        
    }else{
        Out.ZCalcTex = 0;
    }
    
    // index�ێ�
    Out.Index = index / 1000;
    
    return Out;
}

///////////////////////////////////////////////////////////////////////////////////////////////

// �s�N�Z���V�F�[�_
float4 WPEngine_PS( VS_OUTPUT input ) : COLOR0
{
    // UV�̍��W�ϊ�
    float2 tex = input.Tex - 0.5;
    tex = input.TexRot.xy * tex.x + input.TexRot.zw * tex.y;
    tex *= 2;
    tex += 0.5;
    
    // ���ԂɃe�N�X�`���K�p
    float index = input.Index * 10 % 5;
    float4 color = (index < 1) ? tex2D( Tex1Samp, tex ) : ((index < 2) ? tex2D( Tex2Samp, tex ) : ((index < 3) ? tex2D( Tex3Samp, tex ) : ((index < 4) ? tex2D( Tex4Samp, tex ) : tex2D( Tex5Samp, tex ))));
    
    // �Q�[�~���ORGB�擾
    float4 rnd_rgb = getRandomRGB(input.Index);
    color.rgb = rnd_rgb.rgb;
    color.a *= input.Alpha;
    
    //color = float4(1,1,1,1);
    
    return color;
}

///////////////////////////////////////////////////////////////////////////////////////////////

// �V���h�E�o�b�t�@�̃T���v��
sampler DefSampler : register(s0);

// �s�N�Z���V�F�[�_(�V���h�E��)
float4 WPEngine_S_PS( VS_OUTPUT input ) : COLOR0
{
    // UV�̍��W�ϊ�
    float2 tex = input.Tex - 0.5;
    tex = input.TexRot.xy * tex.x + input.TexRot.zw * tex.y;
    tex *= 2;
    tex += 0.5;
    
    // ���ԂɃe�N�X�`���K�p
    float index = input.Index * 10 % 5;
    float4 color = (index < 1) ? tex2D( Tex1Samp, tex ) : ((index < 2) ? tex2D( Tex2Samp, tex ) : ((index < 3) ? tex2D( Tex3Samp, tex ) : ((index < 4) ? tex2D( Tex4Samp, tex ) : tex2D( Tex5Samp, tex ))));
    
    // �Q�[�~���ORGB�擾
    float4 rnd_rgb = getRandomRGB(input.Index);
    color.rgb = rnd_rgb.rgb;
    color.a *= input.Alpha;
    
    //�V���h�E�Ή� -------------------
    
    float light = 1;
    float darklight = 0.3;
    
    // �e�N�X�`�����W�ɕϊ�
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
        ZWRITEENABLE = false; //Z�o�b�t�@���X�V���Ȃ�
        
        //�����̃R�����g�A�E�g���O���Ή��Z������
        //SRCBLEND=ONE;
        //DESTBLEND=ONE;
        
        VertexShader = compile vs_3_0 WPEngine_VS(false);
        PixelShader  = compile ps_3_0 WPEngine_PS();
    }
}

technique MainTec2 < string MMDPass = "object_ss"; > {
    pass DrawObject {
        ZWRITEENABLE = false; //Z�o�b�t�@���X�V���Ȃ�
        
        //�����̃R�����g�A�E�g���O���Ή��Z������
        //SRCBLEND=ONE;
        //DESTBLEND=ONE;
        
        VertexShader = compile vs_3_0 WPEngine_VS(true);
        PixelShader  = compile ps_3_0 WPEngine_S_PS();
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////
// �Z���t�V���h�E�pZ�l�v���b�g

struct VS_ZValuePlot_OUTPUT {
    float4 Pos : POSITION;              // �ˉe�ϊ����W
    float4 ShadowMapTex : TEXCOORD0;    // Z�o�b�t�@�e�N�X�`��
};

// ���_�V�F�[�_
VS_ZValuePlot_OUTPUT ZValuePlot_VS( float4 Pos : POSITION )
{
    VS_ZValuePlot_OUTPUT Out = (VS_ZValuePlot_OUTPUT)0;

    // ���C�g�̖ڐ��ɂ�郏�[���h�r���[�ˉe�ϊ�������
    Out.Pos = mul( Pos, LightWorldViewProjMatrix );

    // �e�N�X�`�����W�𒸓_�ɍ��킹��
    Out.ShadowMapTex = Out.Pos;

    return Out;
}

// �s�N�Z���V�F�[�_
float4 ZValuePlot_PS( float4 ShadowMapTex : TEXCOORD0 ) : COLOR
{
    // R�F������Z�l���L�^����
    return float4(ShadowMapTex.z/ShadowMapTex.w,0,0,1);
}

// Z�l�v���b�g�p�e�N�j�b�N
technique ZplotTec < string MMDPass = "zplot"; > {
    /*pass ZValuePlot {
        AlphaBlendEnable = FALSE;
        VertexShader = compile vs_2_0 ZValuePlot_VS();
        PixelShader  = compile ps_2_0 ZValuePlot_PS();
    }*/
}

// �n�ʉe�Ȃ�
technique ShadowTec < string MMDPass = "shadow"; > { }