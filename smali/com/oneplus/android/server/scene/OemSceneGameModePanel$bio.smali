.class public Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneGameModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "bio"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p1

    instance-of p1, p1, Lcom/oneplus/android/server/scene/ssp;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->igw()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/cno;->tsu()V

    :cond_1
    return-void
.end method
