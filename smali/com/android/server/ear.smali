.class public Lcom/android/server/ear;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/IOPInstantAppService;


# static fields
.field private static final sis:Ljava/lang/String; = "OPInstantLocalService->OpInstantAppHelper"

.field private static final you:Z


# instance fields
.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ear;->you:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppStartModeLocked(Ljava/lang/String;)I
    .locals 1

    const-string p0, "com.oneplus.instant.local.service"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/server/ear;->you:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "instant app is super wildcard : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPInstantLocalService->OpInstantAppHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/ear;->you:Z

    if-eqz v0, :cond_0

    const-string v0, "OPInstantLocalService->OpInstantAppHelper"

    const-string v1, "init : where magic happens"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/ear;->zta:Landroid/content/Context;

    return-void
.end method
