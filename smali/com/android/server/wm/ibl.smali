.class public Lcom/android/server/wm/ibl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpFingerprintAccelerate;


# static fields
.field private static final sis:Ljava/lang/String; = "OpFingerprintAccelerate"

.field private static tsu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final you:Z


# instance fields
.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ibl;->you:Z

    const-string v1, "com.android.chrome"

    const-string v2, "com.autonavi.minimap"

    const-string v3, "com.shuqiyuedu823.google"

    const-string v4, "com.amazon.avod.thirdpartyclient"

    const-string v5, "com.google.android.apps.maps"

    const-string v6, "com.tencent.qqlive"

    const-string v7, "com.youku.phone"

    const-string v8, "com.tencent.mm"

    const-string v9, "com.sdu.didi.psnger"

    const-string v10, "com.oppo.im"

    const-string v11, "com.qiyi.video"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ibl;->tsu:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ibl;->zta:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isAppSupportsAccelerting(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/server/wm/ibl;->tsu:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
