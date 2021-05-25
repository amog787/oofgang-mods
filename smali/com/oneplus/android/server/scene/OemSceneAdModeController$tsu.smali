.class Lcom/oneplus/android/server/scene/OemSceneAdModeController$tsu;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneAdModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$300(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)V

    return-void
.end method
