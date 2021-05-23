.class public final synthetic Lcom/android/server/wm/dma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/ear/rtg$tsu;


# static fields
.field public static final synthetic zta:Lcom/android/server/wm/dma;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/dma;

    invoke-direct {v0}, Lcom/android/server/wm/dma;-><init>()V

    sput-object v0, Lcom/android/server/wm/dma;->zta:Lcom/android/server/wm/dma;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zta(I)Ljava/io/File;
    .locals 0

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
