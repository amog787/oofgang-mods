.class public Lcom/oneplus/android/server/alertslider/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/alertslider/IAlertSliderManager;


# static fields
.field private static final ssp:Ljava/lang/String; = "AlertSliderManager"


# instance fields
.field private rtg:Landroid/content/Context;

.field private sis:Lcom/oneplus/android/server/alertslider/rtg;

.field private tsu:Lcom/oneplus/android/server/alertslider/rtg;

.field private you:Lcom/oneplus/android/server/alertslider/zta;

.field private zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlertSliderMode()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/tsu;->you:Lcom/oneplus/android/server/alertslider/zta;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/alertslider/sis;->zta()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public initInstance(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/tsu;->rtg:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/android/server/alertslider/you;

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/tsu;->rtg:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/oneplus/android/server/alertslider/you;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/tsu;->sis:Lcom/oneplus/android/server/alertslider/rtg;

    new-instance p1, Lcom/oneplus/android/server/alertslider/ssp;

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/tsu;->rtg:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/oneplus/android/server/alertslider/ssp;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/tsu;->tsu:Lcom/oneplus/android/server/alertslider/rtg;

    new-instance p1, Lcom/oneplus/android/server/alertslider/zta;

    iget-object p2, p0, Lcom/oneplus/android/server/alertslider/tsu;->rtg:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/oneplus/android/server/alertslider/zta;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/tsu;->you:Lcom/oneplus/android/server/alertslider/zta;

    iget-object p2, p0, Lcom/oneplus/android/server/alertslider/tsu;->sis:Lcom/oneplus/android/server/alertslider/rtg;

    invoke-virtual {p1, p2}, Lcom/oneplus/android/server/alertslider/zta;->gck(Lcom/oneplus/android/server/alertslider/rtg;)V

    iget-object p1, p0, Lcom/oneplus/android/server/alertslider/tsu;->you:Lcom/oneplus/android/server/alertslider/zta;

    iget-object p2, p0, Lcom/oneplus/android/server/alertslider/tsu;->tsu:Lcom/oneplus/android/server/alertslider/rtg;

    invoke-virtual {p1, p2}, Lcom/oneplus/android/server/alertslider/zta;->gck(Lcom/oneplus/android/server/alertslider/rtg;)V

    new-instance p1, Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    iget-object p2, p0, Lcom/oneplus/android/server/alertslider/tsu;->rtg:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/tsu;->you:Lcom/oneplus/android/server/alertslider/zta;

    invoke-direct {p1, p2, v0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;-><init>(Landroid/content/Context;Lcom/oneplus/android/server/alertslider/zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/tsu;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-virtual {p1}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->ssp()Z

    return-void
.end method
