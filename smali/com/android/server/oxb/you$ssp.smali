.class Lcom/android/server/oxb/you$ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oxb/you;->hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/oxb/you;


# direct methods
.method constructor <init>(Lcom/android/server/oxb/you;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb/you$ssp;->zta:Lcom/android/server/oxb/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/oxb/you$ssp;->zta:Lcom/android/server/oxb/you;

    invoke-static {p2}, Lcom/android/server/oxb/you;->kth(Lcom/android/server/oxb/you;)Lcom/android/server/display/IOpBacklightController;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/oxb/you$ssp;->zta:Lcom/android/server/oxb/you;

    invoke-static {p0}, Lcom/android/server/oxb/you;->kth(Lcom/android/server/oxb/you;)Lcom/android/server/display/IOpBacklightController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/display/IOpBacklightController;->frontPackageChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
