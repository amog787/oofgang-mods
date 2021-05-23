.class public Lcom/oneplus/android/server/bluetooth/bio;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bio:I = 0xa

.field private static final bvj:I = 0x100

.field private static final cno:I = 0x8

.field private static final dma:I = 0x8

.field private static final gck:I = 0x4

.field public static final gwm:I = 0x1

.field private static final ibl:I = 0x200

.field private static final igw:I = 0x1

.field private static final kth:I = 0x9

.field private static final oif:I = 0x80

.field private static final qbh:I = 0x40

.field private static final rtg:I = 0x3

.field private static final sis:I = 0x1

.field private static final ssp:I = 0x4

.field private static final tsu:I = 0x2

.field public static final ugm:I = 0x2

.field private static final wtn:I = 0x2

.field static final you:Z = false

.field private static final ywr:I = 0x20

.field static final zta:Ljava/lang/String; = "OpBluetoothUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bio(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unkown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SOC_CONN_FAIL"

    return-object p0

    :cond_1
    const-string p0, "SOC_LSTO"

    return-object p0

    :cond_2
    const-string p0, "SOC_SCO_MISSES"

    return-object p0

    :cond_3
    const-string p0, "SOC_HALF_LSTO"

    return-object p0

    :cond_4
    const-string p0, "SOC_PAGE_TIMEOUT"

    return-object p0

    :cond_5
    const-string p0, "HOST_MEDIA_TIMER_DELAY"

    return-object p0

    :cond_6
    const-string p0, "HOST_CREDIT_UNAVAILABLE"

    return-object p0

    :cond_7
    const-string p0, "HOST_MEDIA_BUFFER_OVERFLOW"

    return-object p0

    :cond_8
    const-string p0, "SOC_A2DP_TRANSMISSION_DELAY"

    return-object p0
.end method

.method static bvj(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "PIN_16_DIGITS"

    return-object p0

    :pswitch_1
    const-string p0, "OOB_CONSENT"

    return-object p0

    :pswitch_2
    const-string p0, "DISPLAY_PIN"

    return-object p0

    :pswitch_3
    const-string p0, "DISPLAY_PASSKEY"

    return-object p0

    :pswitch_4
    const-string p0, "CONSENT"

    return-object p0

    :pswitch_5
    const-string p0, "PASSKEY_CONFIRMATION"

    return-object p0

    :pswitch_6
    const-string p0, "PASSKEY"

    return-object p0

    :pswitch_7
    const-string p0, "PIN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static cno(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "BT5.2"

    return-object p0

    :pswitch_1
    const-string p0, "BT5.1"

    return-object p0

    :pswitch_2
    const-string p0, "BT5.0"

    return-object p0

    :pswitch_3
    const-string p0, "BT4.2"

    return-object p0

    :pswitch_4
    const-string p0, "BT4.1"

    return-object p0

    :pswitch_5
    const-string p0, "BT4.0"

    return-object p0

    :pswitch_6
    const-string p0, "BT3.0+HS"

    return-object p0

    :pswitch_7
    const-string p0, "BT2.1+EDR"

    return-object p0

    :pswitch_8
    const-string p0, "BT2.0+EDR"

    return-object p0

    :pswitch_9
    const-string p0, "BT1.2"

    return-object p0

    :pswitch_a
    const-string p0, "BT1.1"

    return-object p0

    :pswitch_b
    const-string p0, "BT1.0B"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static dma(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SIM_ACCESS "

    return-object p0

    :cond_1
    const-string p0, "MESSAGE_ACCESS"

    return-object p0

    :cond_2
    const-string p0, "PHONEBOOK_ACCESS"

    return-object p0

    :cond_3
    const-string p0, "PROFILE_CONNECTION"

    return-object p0
.end method

.method static gck(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "STEREO"

    return-object p0

    :cond_1
    const-string p0, "MONO"

    return-object p0

    :cond_2
    const-string p0, "NONE"

    return-object p0
.end method

.method static gwm(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "192000"

    return-object p0

    :cond_1
    const-string p0, "176400"

    return-object p0

    :cond_2
    const-string p0, "96000"

    return-object p0

    :cond_3
    const-string p0, "88200"

    return-object p0

    :cond_4
    const-string p0, "48000"

    return-object p0

    :cond_5
    const-string p0, "44100"

    return-object p0

    :cond_6
    const-string p0, "NONE"

    return-object p0
.end method

.method static ibl(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "32"

    return-object p0

    :cond_1
    const-string p0, "24"

    return-object p0

    :cond_2
    const-string p0, "16"

    return-object p0

    :cond_3
    const-string p0, "NONE"

    return-object p0
.end method

.method static igw(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unkown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "HOST_A2DP_GLITCH"

    return-object p0

    :pswitch_1
    const-string p0, "HOST_DISCONNECTION"

    return-object p0

    :pswitch_2
    const-string p0, "HOST_CONNECTION_FAIL"

    return-object p0

    :cond_0
    const-string p0, "SOC_VOICE_BREAK"

    return-object p0

    :cond_1
    const-string p0, "SOC_A2DP_GLITCH"

    return-object p0

    :cond_2
    const-string p0, "SOC_DISCONNECTION"

    return-object p0

    :cond_3
    const-string p0, "SOC_CONNECTION_FAIL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static kth(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "NOT PLAYING"

    return-object p0

    :cond_1
    const-string p0, "PLAYING"

    return-object p0
.end method

.method static obl(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p0

    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-eq v1, v2, :cond_3

    const/16 v1, 0x100

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method static oif(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "REMOVED"

    return-object p0

    :pswitch_1
    const-string p0, "REMOTE_AUTH_CANCELED"

    return-object p0

    :pswitch_2
    const-string p0, "REPEATED_ATTEMPTS"

    return-object p0

    :pswitch_3
    const-string p0, "AUTH_TIMEOUT"

    return-object p0

    :pswitch_4
    const-string p0, "DISCOVERY_IN_PROGRESS"

    return-object p0

    :pswitch_5
    const-string p0, "REMOTE_DEVICE_DOWN"

    return-object p0

    :pswitch_6
    const-string p0, "AUTH_CANCELED"

    return-object p0

    :pswitch_7
    const-string p0, "AUTH_REJECTED"

    return-object p0

    :pswitch_8
    const-string p0, "AUTH_FAILED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static oxb(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/android/server/bluetooth/bio;->you([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method static qbh(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DUAL"

    return-object p0

    :cond_1
    const-string p0, "LE"

    return-object p0

    :cond_2
    const-string p0, "BR/EDR"

    return-object p0
.end method

.method static rtg(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DISCONNECTING"

    return-object p0

    :cond_1
    const-string p0, "CONNECTED"

    return-object p0

    :cond_2
    const-string p0, "CONNECTING"

    return-object p0

    :cond_3
    const-string p0, "DISCONNECTED"

    return-object p0
.end method

.method static sis()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.rom.version"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static ssp(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "DISCONNECTING"

    return-object p0

    :pswitch_1
    const-string p0, "CONNECTED"

    return-object p0

    :pswitch_2
    const-string p0, "CONNECTING"

    return-object p0

    :pswitch_3
    const-string p0, "DISCONNECTED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static tsu(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unkown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "BONDED"

    return-object p0

    :pswitch_1
    const-string p0, "BONDING"

    return-object p0

    :pswitch_2
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static ugm(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SCO_AUDIO_CONNECTING"

    return-object p0

    :cond_1
    const-string p0, "SCO_AUDIO_CONNECTED"

    return-object p0

    :cond_2
    const-string p0, "SCO_AUDIO_DISCONNECTED"

    return-object p0

    :cond_3
    const-string p0, "SCO_AUDIO_ERROR"

    return-object p0
.end method

.method static vdb(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "RESTORE_USER_SETTING"

    return-object p0

    :pswitch_1
    const-string p0, "USER_SWITCH"

    return-object p0

    :pswitch_2
    const-string p0, "CRASH"

    return-object p0

    :pswitch_3
    const-string p0, "SYSTEM_BOOT"

    return-object p0

    :pswitch_4
    const-string p0, "START_ERROR"

    return-object p0

    :pswitch_5
    const-string p0, "RESTARTED"

    return-object p0

    :pswitch_6
    const-string p0, "DISALLOWED"

    return-object p0

    :pswitch_7
    const-string p0, "AIRPLANE_MODE"

    return-object p0

    :pswitch_8
    const-string p0, "APPLICATION_REQUEST"

    return-object p0

    :pswitch_9
    const-string p0, "UNSPECIFIED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static wtn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "UTF-8"

    const-string v1, "OpBluetoothUtils"

    const-string v2, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v3, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nameReorganize: utf-8 the encode name is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_1

    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "UnsupportedEncodingException"

    goto :goto_1

    :catch_1
    const-string p0, "IndexOutOfBoundsException"

    :goto_1
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method static you([B)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static ywr(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ACCESS_NO"

    return-object p0

    :cond_1
    const-string p0, "ACCESS_YES"

    return-object p0
.end method

.method static zgw(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "A2DP_SINK"

    goto/16 :goto_0

    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "AUDIO_SOURCE "

    goto/16 :goto_0

    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "A2DP "

    goto/16 :goto_0

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "HSP "

    goto/16 :goto_0

    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "HSP_AG "

    goto/16 :goto_0

    :cond_4
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "HFP "

    goto/16 :goto_0

    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "HFP_AG "

    goto/16 :goto_0

    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AVRCP_CONTROLLER:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "AVRCP_CONTROLLER "

    goto/16 :goto_0

    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AVRCP_TARGET:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "AVRCP_TARGET "

    goto/16 :goto_0

    :cond_8
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "OPP "

    goto/16 :goto_0

    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "HID "

    goto/16 :goto_0

    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "HOGP "

    goto/16 :goto_0

    :cond_b
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "PANU "

    goto/16 :goto_0

    :cond_c
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "NAP "

    goto :goto_0

    :cond_d
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "BNEP "

    goto :goto_0

    :cond_e
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "PBAP_PCE "

    goto :goto_0

    :cond_f
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "PBAP_PSE "

    goto :goto_0

    :cond_10
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "MAP "

    goto :goto_0

    :cond_11
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "MNS "

    goto :goto_0

    :cond_12
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "MAS "

    goto :goto_0

    :cond_13
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "SAP "

    goto :goto_0

    :cond_14
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "HEARING_AID "

    goto :goto_0

    :cond_15
    const-string p0, "UNKNOW_SDP_RECORD"

    :goto_0
    return-object p0
.end method

.method static zta(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/android/server/bluetooth/bio;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x16

    const/16 v2, 0x26

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method
