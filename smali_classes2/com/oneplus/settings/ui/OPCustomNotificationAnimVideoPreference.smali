.class public Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;
.super Landroidx/preference/Preference;
.source "OPCustomNotificationAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;
    }
.end annotation


# instance fields
.field private mAnimationAvailable:Z

.field private mAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

.field private mLastIndex:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreviewResource:I

.field private mSelectedIndex:I

.field private mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 94
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 80
    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAspectRadio:F

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    .line 95
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_horizon_light_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mLastIndex:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v4, Lcom/android/settings/R$styleable;->VideoPreference:[I

    invoke-virtual {v0, p2, v4, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 103
    :try_start_0
    sget v0, Lcom/android/settings/R$styleable;->VideoPreference_animation:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 106
    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->getCustomAnimationId(I)I

    move-result v0

    .line 107
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "android.resource"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 109
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 114
    sget v0, Lcom/android/settings/R$layout;->op_custom_notification_anim_choose_layout:I

    .line 115
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 117
    sget v0, Lcom/android/settings/R$styleable;->VideoPreference_preview:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mPreviewResource:I

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$XDIE-VqYRxTMK4Qxo5ND3bUls_g;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$XDIE-VqYRxTMK4Qxo5ND3bUls_g;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$Agw3O0vl_alalHCVViyH3bHn0mM;->INSTANCE:Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$Agw3O0vl_alalHCVViyH3bHn0mM;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 123
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnimationAvailable:Z

    .line 124
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->updateAspectRatio()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "VideoPreference"

    const-string p1, "Animation resource not found. Will not show animation."

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    throw p0
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Landroid/media/MediaPlayer;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->setSelectedAnim(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->changeAnimStyle(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    return p1
.end method

.method private changeAnimStyle(I)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->playAnimByStyle(I)V

    return-void
.end method

.method private getCustomAnimationId(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/16 p0, 0x14

    if-eq p1, p0, :cond_0

    .line 267
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_blue_anim:I

    goto :goto_0

    .line 262
    :cond_0
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_red1_anim:I

    goto :goto_0

    .line 259
    :cond_1
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_mcl_anim:I

    goto :goto_0

    .line 256
    :cond_2
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_purple_anim:I

    goto :goto_0

    .line 253
    :cond_3
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_gold_anim:I

    goto :goto_0

    .line 250
    :cond_4
    sget p0, Lcom/android/settings/R$raw;->op_custom_horizon_light_red_anim:I

    :goto_0
    return p0
.end method

.method private getSelectedAnimIndex()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 479
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 480
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private initStyleAnimViews()V
    .locals 15

    .line 360
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    new-instance v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->aod_horizon_light_effect_1:I

    .line 363
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->op_custom_horizon_light_blue:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 365
    new-instance v1, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->aod_horizon_light_effect_2:I

    .line 366
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/android/settings/R$drawable;->op_custom_horizon_light_red:I

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 368
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->color_orange:I

    .line 369
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/android/settings/R$drawable;->op_custom_horizon_light_gold:I

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 371
    new-instance v4, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->aod_horizon_light_effect_3:I

    .line 372
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v8, Lcom/android/settings/R$drawable;->op_custom_horizon_light_purple:I

    const/4 v9, 0x3

    invoke-direct {v4, v6, v8, v9}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 374
    new-instance v6, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v8, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->aod_horizon_light_effect_5:I

    .line 375
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v10, Lcom/android/settings/R$drawable;->op_custom_horizon_light_mcl:I

    const/16 v11, 0xa

    invoke-direct {v6, v8, v10, v11}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 377
    new-instance v8, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object v10, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    sget v12, Lcom/android/settings/R$string;->aod_horizon_light_effect_red:I

    .line 378
    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v12, Lcom/android/settings/R$drawable;->op_custom_horizon_light_red1:I

    const/16 v13, 0x14

    invoke-direct {v8, v10, v12, v13}, Lcom/oneplus/settings/ui/OPCustomItemEntity;-><init>(Ljava/lang/String;II)V

    .line 381
    iget-object v10, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "op_custom_horizon_light_animation_style"

    const/4 v14, -0x2

    invoke-static {v10, v12, v3, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 383
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initStyleAnimViews  AOD style = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "OPCustomNotificationAnimVideoPreference"

    invoke-static {v12, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v9, :cond_2

    if-eq v3, v11, :cond_1

    if-eq v3, v13, :cond_0

    .line 404
    iput-boolean v5, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 401
    :cond_0
    iput-boolean v5, v8, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 398
    :cond_1
    iput-boolean v5, v6, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 395
    :cond_2
    iput-boolean v5, v4, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 392
    :cond_3
    iput-boolean v5, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 389
    :cond_4
    iput-boolean v5, v1, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_0

    .line 386
    :cond_5
    iput-boolean v5, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    .line 411
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 412
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportREDTheme()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 416
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoReady:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private playAnimByStyle(I)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 291
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 293
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->getCustomAnimationId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 296
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 297
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 298
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 299
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 301
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setAnimStyle(I)V
    .locals 3

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimStyle value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentHorizonLightByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    const-string v2, "oneplus_aodnotification"

    invoke-static {v2, v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 281
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    .line 284
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForHorizonLightAnimStyle()V

    return-void
.end method

.method private setSelectedAnim(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 488
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 490
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    goto :goto_1

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iput-boolean v0, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAspectRatio()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAspectRadio:F

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$OPCustomNotificationAnimVideoPreference(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->lambda$new$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public needShowWarningDialog()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    if-eqz v2, :cond_1

    .line 138
    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mLastIndex:I

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

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

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 146
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 147
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    sget v0, Lcom/android/settings/R$id;->video_container_scrollview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 152
    new-instance v1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    sget v0, Lcom/android/settings/R$id;->video_texture_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 161
    sget v1, Lcom/android/settings/R$id;->video_preview_image:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 162
    sget v2, Lcom/android/settings/R$id;->video_play_button:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 163
    sget v3, Lcom/android/settings/R$id;->video_container:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/AspectRatioFrameLayout;

    .line 166
    iget v4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mPreviewResource:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget v4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAspectRadio:F

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 168
    new-instance v3, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 208
    sget v0, Lcom/android/settings/R$id;->custom_fingerprint_anim_style_recyclerview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 210
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 211
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 213
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->initStyleAnimViews()V

    .line 214
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 216
    new-instance v3, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v4, v5, v2}, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 218
    new-instance v2, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V

    .line 219
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 221
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->getSelectedAnimIndex()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    if-ltz v0, :cond_1

    .line 222
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 223
    iget v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 226
    :cond_1
    sget v0, Lcom/android/settings/R$id;->anim_bg:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 227
    sget v1, Lcom/android/settings/R$drawable;->op_custom_aodpreview_none:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 228
    sget v0, Lcom/android/settings/R$id;->bottom_icon_image:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    sget v0, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 233
    new-instance v0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$3;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 309
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 310
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 312
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public saveSelectedAnim()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->setAnimStyle(I)V

    .line 317
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mAnims:Ljava/util/List;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

    const-string v0, "status"

    const-string v1, "horizon"

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "purple"

    .line 328
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "gold"

    .line 325
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "red"

    .line 322
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "blue"

    .line 319
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSettingsPreferenceFragment(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method
