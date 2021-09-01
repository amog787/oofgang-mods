.class public Lcom/oneplus/settings/ui/OPCustomClockPreference;
.super Landroidx/preference/Preference;
.source "OPCustomClockPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;,
        Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;,
        Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;
    }
.end annotation


# static fields
.field private static final SUPPORT_FOD:Z

.field private static final mCanvasAodUri:Landroid/net/Uri;


# instance fields
.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFirstPreviewHelper:Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIndex:I

.field private mPreView:Landroid/widget/ImageView;

.field private mSelectedIndex:I

.field private mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mShowInfo:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->SUPPORT_FOD:Z

    const-string v0, "content://net.oneplus.launcher.canvas.CanvasProvider/canvasAODEnabled"

    .line 103
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mCanvasAodUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    .line 112
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    const-string p4, "aod_clock_style"

    const/4 v0, 0x0

    invoke-static {p2, p4, v0, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mLastIndex:I

    .line 113
    sget p2, Lcom/android/settings/R$layout;->op_custom_clock_choose_layout:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 114
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 116
    new-instance p2, Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;

    invoke-direct {p2, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mFirstPreviewHelper:Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/ui/OPCustomClockPreference;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->showInfoDialog(Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->isCanvasAodEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->save()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mFirstPreviewHelper:Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-object p0
.end method

.method static synthetic access$702(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oneplus/settings/ui/OPCustomClockPreference;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->changeAdaptive(I)V

    return-void
.end method

.method private changeAdaptive(I)V
    .locals 2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 408
    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_parsons:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 396
    :pswitch_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_minimalism_2:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 393
    :pswitch_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_minimalism_1:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 390
    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_analog_3:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 387
    :pswitch_4
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_analog_2:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 384
    :pswitch_5
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_analog_1:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 381
    :pswitch_6
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_bold:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 378
    :pswitch_7
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_text_clock:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 375
    :pswitch_8
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_digital_2:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 372
    :pswitch_9
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_digital_1:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 399
    :pswitch_a
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_none:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 405
    :pswitch_b
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_smart_space_default:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_default:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_red:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 402
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_custom_aodpreview_mcl:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 415
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    iget v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    .line 416
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mShowInfo:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget-boolean v1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->hasInfo:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mFirstPreviewHelper:Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->key_pref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;->isFirstPreview(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 419
    new-instance v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$3;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference$3;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;)V

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->showInfoDialog(Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;Ljava/lang/Runnable;)V

    :cond_4
    return-void

    nop

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

.method private isCanvasAodEnabled()Z
    .locals 7

    const-string v0, "canvasAODEnabled"

    const-string v1, "OPCustomClockPreference"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 591
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mCanvasAodUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 594
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 600
    :try_start_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "canvas_aod_enabled"

    .line 603
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 599
    invoke-static {p0, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v2, :cond_1

    move p0, v2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    move p0, v3

    move v0, p0

    goto :goto_1

    :catch_1
    move-exception p0

    move v0, v3

    .line 607
    :goto_0
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_1

    const-string v4, "isCanvasAodEnabled: occur error"

    .line 608
    invoke-static {v1, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move p0, v3

    .line 611
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCanvasAodEnabled: enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", systemUIEnableCanvas= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method static synthetic lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private needShowNoneClockStyle()Z
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 363
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private save()V
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->saveSelectedClock()V

    .line 356
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method private showInfoDialog(IIIILjava/lang/Runnable;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    if-ne p4, v0, :cond_0

    if-ne p1, v0, :cond_0

    return-void

    .line 458
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eq p2, v0, :cond_1

    .line 460
    invoke-virtual {v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_1
    if-eq p3, v0, :cond_2

    .line 463
    invoke-virtual {v1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_2
    if-eq p1, v0, :cond_3

    .line 466
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomImage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_3
    if-eq p4, v0, :cond_4

    const/4 p1, 0x0

    .line 469
    invoke-virtual {v1, p4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 471
    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p5, :cond_5

    .line 473
    new-instance p2, Lcom/oneplus/settings/ui/OPCustomClockPreference$4;

    invoke-direct {p2, p0, p5}, Lcom/oneplus/settings/ui/OPCustomClockPreference$4;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 480
    :cond_5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showInfoDialog(Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->showInfoDialog(Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private showInfoDialog(Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;Ljava/lang/Runnable;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 433
    iget-boolean v0, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->hasInfo:Z

    if-eqz v0, :cond_1

    .line 438
    iget p1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/16 v0, 0xb

    const/4 v1, -0x1

    if-eq p1, v0, :cond_0

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    goto :goto_0

    .line 441
    :cond_0
    sget v1, Lcom/android/settings/R$string;->aod_clock_parsons:I

    .line 442
    sget p1, Lcom/android/settings/R$string;->op_aod_parsons_info_message:I

    .line 443
    sget v0, Lcom/android/settings/R$string;->op_aod_parsons_info_button:I

    .line 444
    sget v2, Lcom/android/settings/R$drawable;->op_parsons_info_image:I

    move v6, p1

    move v7, v0

    move v5, v1

    move v4, v2

    :goto_0
    move-object v3, p0

    move-object v8, p2

    .line 447
    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->showInfoDialog(IIIILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public needShowWarningDialog()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    if-eqz v2, :cond_1

    .line 166
    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mLastIndex:I

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    if-eq v2, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 345
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult: resultCode= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "OPCustomClockPreference"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x64

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->save()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 174
    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 175
    sget v2, Lcom/android/settings/R$id;->video_container_scrollview:I

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 176
    sget-object v3, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$R0hYGgoHJXoeOM0AzCeYqbFHm_4;->INSTANCE:Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$R0hYGgoHJXoeOM0AzCeYqbFHm_4;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    sget v2, Lcom/android/settings/R$id;->preview:I

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    .line 183
    sget v2, Lcom/android/settings/R$id;->showInfo:I

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mShowInfo:Landroid/widget/ImageView;

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mShowInfo:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->op_aod_parsons_show_info_bg_dark:I

    .line 186
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 185
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mShowInfo:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->op_control_icon_color_active_light:I

    .line 188
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 187
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mShowInfo:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->op_aod_parsons_show_info_bg_light:I

    .line 191
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 190
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 192
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mShowInfo:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->op_control_icon_color_active_dark:I

    .line 193
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 192
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 195
    :goto_0
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mShowInfo:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;

    invoke-direct {v3, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    sget v2, Lcom/android/settings/R$id;->custom_style_recyclerview:I

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 205
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 206
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 209
    new-instance v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->aod_clock_default:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/settings/R$drawable;->aod_clock_smart_space_default:I

    invoke-direct {v3, v5, v6, v4}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 210
    new-instance v5, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->aod_clock_digital:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/settings/R$drawable;->aod_clock_default:I

    const/16 v8, 0x64

    invoke-direct {v5, v6, v7, v8}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 211
    new-instance v6, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/android/settings/R$string;->aod_clock_none:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/android/settings/R$drawable;->aod_clock_none:I

    const/4 v10, 0x1

    invoke-direct {v6, v7, v9, v10}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 212
    new-instance v7, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v11, Lcom/android/settings/R$string;->aod_clock_digital_1:I

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v11, Lcom/android/settings/R$drawable;->aod_clock_digital_1:I

    const/4 v12, 0x2

    invoke-direct {v7, v9, v11, v12}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 213
    new-instance v9, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v13, Lcom/android/settings/R$string;->aod_clock_digital_2:I

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v13, Lcom/android/settings/R$drawable;->aod_clock_digital_2:I

    const/4 v14, 0x3

    invoke-direct {v9, v11, v13, v14}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 214
    new-instance v11, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v15, Lcom/android/settings/R$string;->aod_clock_text_clock:I

    invoke-virtual {v13, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v15, Lcom/android/settings/R$drawable;->aod_clock_text_clock:I

    const/4 v14, 0x4

    invoke-direct {v11, v13, v15, v14}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 215
    new-instance v13, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v12, Lcom/android/settings/R$string;->aod_clock_bold:I

    invoke-virtual {v15, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v15, Lcom/android/settings/R$drawable;->aod_clock_bold:I

    const/4 v14, 0x5

    invoke-direct {v13, v12, v15, v14}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 216
    new-instance v12, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v14, Lcom/android/settings/R$string;->aod_clock_analog:I

    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v15, Lcom/android/settings/R$drawable;->aod_clock_analog_1:I

    const/4 v8, 0x6

    invoke-direct {v12, v14, v15, v8}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 217
    new-instance v14, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v8, Lcom/android/settings/R$string;->aod_clock_analog_1:I

    invoke-virtual {v15, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v15, Lcom/android/settings/R$drawable;->aod_clock_analog_2:I

    const/4 v10, 0x7

    invoke-direct {v14, v8, v15, v10}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 218
    new-instance v8, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v10, Lcom/android/settings/R$string;->aod_clock_analog_2:I

    invoke-virtual {v15, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v15, Lcom/android/settings/R$drawable;->aod_clock_analog_3:I

    const/16 v4, 0x8

    invoke-direct {v8, v10, v15, v4}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 219
    new-instance v10, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v4, Lcom/android/settings/R$string;->aod_clock_minimalism:I

    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v15, Lcom/android/settings/R$drawable;->aod_clock_minimalism_1:I

    const/16 v1, 0x9

    invoke-direct {v10, v4, v15, v1}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 220
    new-instance v4, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v1, Lcom/android/settings/R$string;->aod_clock_minimalism_1:I

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v15, Lcom/android/settings/R$drawable;->aod_clock_minimalism_2:I

    move-object/from16 v16, v2

    const/16 v2, 0xa

    invoke-direct {v4, v1, v15, v2}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 221
    new-instance v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v2, Lcom/android/settings/R$string;->aod_clock_mcl:I

    invoke-virtual {v15, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v15, Lcom/android/settings/R$drawable;->aod_clock_mcl:I

    move-object/from16 v17, v6

    const/16 v6, 0x28

    invoke-direct {v1, v2, v15, v6}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 222
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v6, Lcom/android/settings/R$string;->aod_clock_parsons:I

    invoke-virtual {v15, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget v20, Lcom/android/settings/R$drawable;->aod_clock_parsons:I

    const/16 v21, 0xb

    const/16 v22, 0x1

    const-string v23, "aod_parsons"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v23}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    .line 223
    new-instance v6, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v18, v4

    sget v4, Lcom/android/settings/R$string;->aod_clock_red:I

    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v15, Lcom/android/settings/R$drawable;->aod_clock_red:I

    move-object/from16 v19, v10

    const/16 v10, 0x32

    invoke-direct {v6, v4, v15, v10}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Ljava/lang/String;II)V

    .line 224
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v4

    const-string v15, "ro.boot.project_name"

    const-string v10, "18801"

    if-eqz v4, :cond_1

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportREDTheme()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_2
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    move-object/from16 v21, v6

    move-object/from16 v6, v19

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->needShowNoneClockStyle()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 243
    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .line 246
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v17, v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v22, v1

    const-string v1, "aod_clock_style"

    move-object/from16 v23, v6

    const/4 v6, 0x0

    invoke-static {v4, v1, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder  clock curType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OPCustomClockPreference"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-nez v1, :cond_5

    const/4 v2, 0x1

    .line 253
    iput-boolean v2, v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/4 v2, 0x0

    add-int/2addr v6, v2

    .line 254
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x1

    const/16 v3, 0x64

    if-ne v1, v3, :cond_6

    .line 256
    iput-boolean v2, v5, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/4 v2, 0x4

    add-int/2addr v6, v2

    .line 257
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto/16 :goto_3

    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 259
    iput-boolean v2, v7, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/4 v2, 0x5

    add-int/2addr v6, v2

    .line 260
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    .line 262
    iput-boolean v2, v9, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/4 v2, 0x6

    add-int/2addr v6, v2

    .line 263
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto/16 :goto_3

    :cond_8
    const/4 v3, 0x4

    if-ne v1, v3, :cond_9

    .line 265
    iput-boolean v2, v11, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/4 v2, 0x2

    add-int/2addr v6, v2

    .line 266
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto/16 :goto_3

    :cond_9
    const/4 v3, 0x5

    if-ne v1, v3, :cond_a

    .line 268
    iput-boolean v2, v13, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/4 v2, 0x3

    add-int/2addr v6, v2

    .line 269
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto/16 :goto_3

    :cond_a
    const/4 v3, 0x6

    if-ne v1, v3, :cond_b

    .line 271
    iput-boolean v2, v12, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/4 v3, 0x7

    add-int/2addr v6, v3

    .line 272
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto :goto_3

    :cond_b
    const/4 v3, 0x7

    if-ne v1, v3, :cond_c

    .line 274
    iput-boolean v2, v14, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/16 v3, 0x8

    add-int/2addr v6, v3

    .line 275
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto :goto_3

    :cond_c
    const/16 v3, 0x8

    if-ne v1, v3, :cond_d

    .line 277
    iput-boolean v2, v8, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/16 v3, 0x9

    add-int/2addr v6, v3

    .line 278
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto :goto_3

    :cond_d
    const/16 v3, 0x9

    if-ne v1, v3, :cond_e

    move-object/from16 v3, v23

    .line 280
    iput-boolean v2, v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/16 v3, 0xa

    add-int/2addr v6, v3

    .line 281
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto :goto_3

    :cond_e
    const/16 v3, 0xa

    const/16 v4, 0xb

    if-ne v1, v3, :cond_f

    move-object/from16 v3, v22

    .line 283
    iput-boolean v2, v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/2addr v6, v4

    .line 284
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto :goto_3

    :cond_f
    if-ne v1, v4, :cond_10

    move-object/from16 v3, v18

    .line 286
    iput-boolean v2, v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/2addr v6, v2

    .line 287
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto :goto_3

    :cond_10
    if-ne v1, v2, :cond_11

    move-object/from16 v3, v17

    .line 289
    iput-boolean v2, v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v6, v6, 0xc

    .line 290
    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto :goto_3

    :cond_11
    const/16 v3, 0x28

    if-ne v1, v3, :cond_12

    move-object/from16 v3, v19

    .line 292
    iput-boolean v2, v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/4 v3, 0x0

    .line 293
    iput v3, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    goto :goto_3

    :cond_12
    const/4 v3, 0x0

    const/16 v4, 0x32

    if-ne v1, v4, :cond_13

    move-object/from16 v4, v21

    .line 295
    iput-boolean v2, v4, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    .line 296
    iput v3, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    .line 299
    :cond_13
    :goto_3
    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->changeAdaptive(I)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 303
    new-instance v2, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;-><init>(Landroid/content/Context;II)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 305
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    invoke-direct {v2, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V

    .line 306
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 308
    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    if-ltz v2, :cond_14

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_14

    .line 310
    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 313
    :cond_14
    sget v1, Lcom/android/settings/R$id;->save_button:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_15

    .line 315
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;

    invoke-direct {v2, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    return-void
.end method

.method public saveSelectedClock()V
    .locals 8

    .line 133
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 135
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    iget v3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    .line 136
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v2, v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const-string v3, "aod_clock_style"

    .line 135
    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 139
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v1, v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const-string v2, "aod_smart_display_enabled"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "doze_enabled"

    invoke-static {v1, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v4, v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 144
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "prox_wake_enabled"

    invoke-static {v5, v6, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v4, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    .line 145
    :goto_1
    sget-boolean v6, Lcom/oneplus/settings/ui/OPCustomClockPreference;->SUPPORT_FOD:Z

    if-eqz v6, :cond_5

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0xb

    invoke-static {v6, v7}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v3, v4

    :cond_3
    if-eqz v1, :cond_6

    if-nez v5, :cond_4

    if-eqz v3, :cond_6

    .line 149
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v5, :cond_6

    .line 154
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 160
    :cond_6
    :goto_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForClockStyle()V

    return-void
.end method

.method public setSettingsPreferenceFragment(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method
