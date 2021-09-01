.class Lcom/oneplus/settings/OPGestureSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 512
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 514
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings$2;->mIsPrimary:Z

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$2;->mIsPrimary:Z

    if-nez v1, :cond_0

    .line 551
    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->access$200()Ljava/util/List;

    move-result-object v0

    .line 553
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$2;->mIsPrimary:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "open_light_device_key"

    .line 554
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "draw_o_start_camera_key"

    .line 555
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_2
    iget-boolean p0, p0, Lcom/oneplus/settings/OPGestureSettings$2;->mIsPrimary:Z

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const-string p0, "oneplus_draw_o_start_app"

    .line 559
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "oneplus_draw_v_start_app"

    .line 560
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "oneplus_draw_s_start_app"

    .line 561
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "oneplus_draw_m_start_app"

    .line 562
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "oneplus_draw_w_start_app"

    .line 563
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "op_fingerprint_gesture_swipe_down_up"

    .line 567
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->supportGestureAudioRoute()Z

    move-result p0

    const-string p1, "gesture_to_control_calls"

    if-eqz p0, :cond_6

    const-string p0, "gesture_to_answer_call"

    goto :goto_0

    :cond_6
    move-object p0, p1

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "fingerprint_gesture_control"

    .line 571
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "op_fingerprint_long_press_camera_shot"

    .line 572
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "OP_FEATURE_ONE_HAND_MODE"

    .line 575
    invoke-static {p0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 576
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBeta()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const-string p0, "one_hand_mode"

    .line 577
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGoogleCommSuit()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 580
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "rotation_silent_enable"

    .line 581
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 518
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-boolean p0, p0, Lcom/oneplus/settings/OPGestureSettings$2;->mIsPrimary:Z

    if-nez p0, :cond_0

    return-object p2

    .line 523
    :cond_0
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 524
    sget p1, Lcom/android/settings/R$xml;->op_gesture_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 525
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
