.class public Lcom/oneplus/android/server/scene/you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/you$tsu;,
        Lcom/oneplus/android/server/scene/you$rtg;
    }
.end annotation


# static fields
.field private static final gwm:Ljava/lang/String; = "ESportGuider"

.field private static obl:Z = false

.field private static oxb:Lcom/oneplus/android/server/scene/you; = null

.field private static final ugm:Ljava/lang/String; = "1"

.field private static final vdb:Ljava/lang/String; = "0"

.field private static final zgw:Z


# instance fields
.field private bio:Landroid/widget/CheckBox;

.field private bvj:Z

.field private cno:Landroid/view/View;

.field private dma:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

.field private gck:Landroid/content/ContentResolver;

.field private ibl:Lcom/oneplus/android/server/scene/you$tsu;

.field private igw:I

.field private kth:Landroid/widget/TextView;

.field private oif:Z

.field private qbh:I

.field private rtg:Landroid/content/Context;

.field private sis:Landroid/view/LayoutInflater;

.field private ssp:Landroid/view/View;

.field private tsu:Landroid/widget/TextView;

.field private wtn:Z

.field private you:Landroid/widget/LinearLayout;

.field private ywr:Z

.field private zta:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/you;->zgw:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/scene/you;->obl:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/scene/you;->oxb:Lcom/oneplus/android/server/scene/you;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/scene/you;->igw:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/you;->wtn:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/android/server/scene/you;->dma:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/you;->ywr:Z

    iput v0, p0, Lcom/oneplus/android/server/scene/you;->qbh:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/you;->oif:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/you;->bvj:Z

    iput-object p1, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/you;->zta:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/you;->sis:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/you;->gck:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/you;->ibl()V

    return-void
.end method

.method public static bio(Landroid/content/Context;)I
    .locals 2

    const-string v0, "net.oneplus.wallpaperresources"

    const-string v1, "oneplusFnaticWalllpaperVersion"

    invoke-static {p0, v0, v1}, Lcom/oneplus/android/server/scene/you;->wtn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private bvj(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110069

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method static synthetic cno(Lcom/oneplus/android/server/scene/you;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/you;->tsu:Landroid/widget/TextView;

    return-object p0
.end method

.method private dma(Landroid/view/ViewGroup;)V
    .locals 5

    const v0, 0x5080059

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/you;->ssp:Landroid/view/View;

    const v0, 0x5080058

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/you;->cno:Landroid/view/View;

    const v0, 0x508015a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/you;->tsu:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/android/server/scene/you$zta;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/android/server/scene/you$zta;-><init>(Lcom/oneplus/android/server/scene/you;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x11a

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "boost_mode_no_disturb_intro"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/you;->oif:Z

    iget-object v1, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "boost_mode_game_boost_intro"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/you;->bvj:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/android/server/scene/you;->zgw(Landroid/view/ViewGroup;I)V

    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/android/server/scene/you;->oif:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v3}, Lcom/oneplus/android/server/scene/you;->zgw(Landroid/view/ViewGroup;I)V

    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/android/server/scene/you;->oif:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/oneplus/android/server/scene/you;->bvj:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/android/server/scene/you;->tsu:Landroid/widget/TextView;

    const v4, 0x50f000f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/you;->obl(Landroid/view/ViewGroup;)V

    :cond_5
    :goto_2
    const v1, 0x5080078

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/oneplus/android/server/scene/you;->bio:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "game_mode_show_fnatic_intr"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/oneplus/android/server/scene/you;->bio:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/you;->bio:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/scene/you;->obl:Z

    const v0, 0x5080079

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/you;->kth:Landroid/widget/TextView;

    new-instance v0, Lcom/oneplus/android/server/scene/you$you;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/you$you;-><init>(Lcom/oneplus/android/server/scene/you;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->oif(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you;->tsu:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    const v1, 0x5050100

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you;->bio:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method private ibl()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    new-instance v2, Lcom/oneplus/android/server/scene/you$sis;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/you$sis;-><init>(Lcom/oneplus/android/server/scene/you;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static igw(Landroid/content/Context;)Lcom/oneplus/android/server/scene/you;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/you;->oxb:Lcom/oneplus/android/server/scene/you;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/you;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/you;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/you;->oxb:Lcom/oneplus/android/server/scene/you;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/you;->oxb:Lcom/oneplus/android/server/scene/you;

    return-object p0
.end method

.method public static oif(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/android/server/scene/you;->bio(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private qbh(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/scene/you;)Lcom/oneplus/android/server/scene/you$tsu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/you;->ibl:Lcom/oneplus/android/server/scene/you$tsu;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/scene/you;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/scene/you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/you;->bvj:Z

    return p0
.end method

.method static synthetic tsu()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/scene/you;->obl:Z

    return v0
.end method

.method private static wtn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "ESportGuider"

    if-nez p0, :cond_0

    :try_start_1
    const-string p0, "providerInfo is null!"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_1

    const-string p0, "metaData is null!"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method static synthetic you(Lcom/oneplus/android/server/scene/you;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/scene/you;->qbh:I

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/you;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/you;->bio:Landroid/widget/CheckBox;

    return-object p0
.end method


# virtual methods
.method protected gck()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/scene/you;->you:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/you;->dma:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/scene/you;->dma:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->dma()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/you;->zta:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/you;->you:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeView() exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESportGuider"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/you;->you:Landroid/widget/LinearLayout;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/you;->ywr:Z

    return-void
.end method

.method public gwm(Lcom/oneplus/android/server/scene/you$tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/you;->ibl:Lcom/oneplus/android/server/scene/you$tsu;

    return-void
.end method

.method public kth()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/you;->ywr:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/you;->vdb()V

    :cond_0
    return-void
.end method

.method obl(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x508005a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x508005b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x508005c

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v2, 0x50800bb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x50800bc

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x5070151

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x507014f

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x507014d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x50f0080

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x50f0081

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/you;->qbh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/you;->bvj(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x50f0082

    goto :goto_0

    :cond_0
    const p0, 0x50f007c

    :goto_0
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public ugm(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/you;->dma:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    return-void
.end method

.method protected declared-synchronized vdb()V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/you;->gck()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x11a

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/oneplus/android/server/scene/you$rtg;

    iget-object v4, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    const v5, 0x50b002b

    invoke-direct {v1, p0, v4, v5}, Lcom/oneplus/android/server/scene/you$rtg;-><init>(Lcom/oneplus/android/server/scene/you;Landroid/content/Context;I)V

    :goto_0
    iput-object v1, p0, Lcom/oneplus/android/server/scene/you;->you:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/oneplus/android/server/scene/you$rtg;

    iget-object v4, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    const v5, 0x50b003e

    invoke-direct {v1, p0, v4, v5}, Lcom/oneplus/android/server/scene/you$rtg;-><init>(Lcom/oneplus/android/server/scene/you;Landroid/content/Context;I)V

    goto :goto_0

    :goto_1
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x7d8

    const/16 v10, 0x8

    const/4 v11, -0x2

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v4, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    new-array v1, v0, [I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/oneplus/android/server/scene/you$rtg;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    const v3, 0x50b002c

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/android/server/scene/you$rtg;-><init>(Lcom/oneplus/android/server/scene/you;Landroid/content/Context;I)V

    :goto_2
    iput-object v1, p0, Lcom/oneplus/android/server/scene/you;->you:Landroid/widget/LinearLayout;

    goto :goto_3

    :cond_1
    new-instance v1, Lcom/oneplus/android/server/scene/you$rtg;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/you;->rtg:Landroid/content/Context;

    const v3, 0x50b003f

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/android/server/scene/you$rtg;-><init>(Lcom/oneplus/android/server/scene/you;Landroid/content/Context;I)V

    goto :goto_2

    :goto_3
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/16 v7, 0x7d8

    const/16 v8, 0x8

    const/4 v9, -0x2

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :cond_2
    iget-object v2, p0, Lcom/oneplus/android/server/scene/you;->you:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/scene/you;->dma(Landroid/view/ViewGroup;)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x12

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "ESportGuider"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/android/server/scene/you;->zta:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/oneplus/android/server/scene/you;->you:Landroid/widget/LinearLayout;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/you;->you:Landroid/widget/LinearLayout;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/you;->ywr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ywr()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/you;->ywr:Z

    return p0
.end method

.method zgw(Landroid/view/ViewGroup;I)V
    .locals 3

    const v0, 0x50800e3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x5080069

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x5080068

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x5070143

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x50f0078

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x50f0079

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iput v2, p0, Lcom/oneplus/android/server/scene/you;->qbh:I

    goto :goto_0

    :cond_1
    const p2, 0x5070144

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x50f007a

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x50f007b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/android/server/scene/you;->qbh:I

    :goto_0
    return-void
.end method
