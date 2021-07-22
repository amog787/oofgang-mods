.class public Lcom/oneplus/settings/OPNotchDisplayGuideActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPNotchDisplayGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mFullScreenModeGuideTitle:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHideNotch:Landroid/widget/ImageView;

.field private mHideNotchBtn:Landroid/widget/RadioButton;

.field private mHideNotchMode:Landroid/view/View;

.field private mHideNotchModeTitle:Landroid/widget/TextView;

.field private mHideNotchModeTitleSummary:Landroid/widget/TextView;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mShowNotch:Landroid/widget/ImageView;

.field private mShowNotchBtn:Landroid/widget/RadioButton;

.field private mShowNotchMode:Landroid/view/View;

.field private mShowNotchModeTitle:Landroid/widget/TextView;

.field private mShowNotchModeTitleSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$lBTk3aV-1tGVERBb37MROjQ8ddA;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$lBTk3aV-1tGVERBb37MROjQ8ddA;

    .line 44
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)Landroid/content/om/IOverlayManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCurrenMode()Ljava/lang/String;
    .locals 4

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "package_device_default"

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getOverlayInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 169
    iget-object v3, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getOverlayInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v1, "android"

    const/4 v2, 0x0

    .line 226
    invoke-interface {p0, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 227
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    const-string v2, "com.android.internal.display_cutout_emulation"

    .line 228
    iget-object v3, v1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :cond_1
    sget-object p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private synthetic lambda$onClick$1()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 136
    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$2()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 149
    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$setOverlay$3(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    .line 180
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setOverlay$4(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/content/om/OverlayInfo;)I
    .locals 0

    .line 44
    iget p0, p0, Landroid/content/om/OverlayInfo;->priority:I

    return p0
.end method

.method private setCurrentMode()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getCurrenMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_device_default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getCurrenMode()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.internal.display.cutout.emulation.noCutout"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private setOverlay(Ljava/lang/String;)Z
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;Z)V

    .line 179
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;

    .line 180
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;

    .line 181
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "package_device_default"

    .line 185
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return v1

    .line 191
    :cond_2
    new-instance v2, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;-><init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 217
    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1
.end method


# virtual methods
.method public synthetic lambda$onClick$1$OPNotchDisplayGuideActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->lambda$onClick$1()V

    return-void
.end method

.method public synthetic lambda$onClick$2$OPNotchDisplayGuideActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->lambda$onClick$2()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    sget p1, Lcom/android/settings/R$string;->feature_not_support_split_screen:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    const-string v2, "notch_display"

    const-wide/16 v3, 0x7d0

    const/4 v5, 0x1

    if-ne p1, v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 131
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 132
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 134
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$I7MhZGV2MxvtCUd5vNy8iL55-Lo;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$I7MhZGV2MxvtCUd5vNy8iL55-Lo;-><init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "package_device_default"

    .line 138
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setOverlay(Ljava/lang/String;)Z

    .line 139
    invoke-static {v2, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 141
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 142
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 143
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 144
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const-string p1, "com.android.internal.display.cutout.emulation.noCutout"

    .line 145
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setOverlay(Ljava/lang/String;)Z

    .line 147
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$FCz1Ru0CGbBUDAMHGoC-ZNJO4F4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$FCz1Ru0CGbBUDAMHGoC-ZNJO4F4;-><init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget p1, Lcom/android/settings/R$layout;->op_fullscreen_app_guide_layout:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mContext:Landroid/content/Context;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHandler:Landroid/os/Handler;

    const-string p1, "activity"

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    .line 75
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    const-string p1, "overlay"

    .line 77
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 78
    sget p1, Lcom/android/settings/R$id;->op_show_notch_mode:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget p1, Lcom/android/settings/R$id;->op_hide_notch_mode:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget p1, Lcom/android/settings/R$id;->op_show_notch_btn:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    .line 83
    sget p1, Lcom/android/settings/R$id;->op_hide_notch_btn:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    .line 86
    sget p1, Lcom/android/settings/R$id;->fullscreen_mode_guide_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mFullScreenModeGuideTitle:Landroid/widget/TextView;

    .line 87
    sget p1, Lcom/android/settings/R$id;->op_show_notch_mode_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchModeTitle:Landroid/widget/TextView;

    .line 88
    sget p1, Lcom/android/settings/R$id;->op_fullscreen_mode_title_summary:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchModeTitleSummary:Landroid/widget/TextView;

    .line 89
    sget p1, Lcom/android/settings/R$id;->op_hide_notch_mode_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchModeTitle:Landroid/widget/TextView;

    .line 90
    sget p1, Lcom/android/settings/R$id;->op_hide_notch_mode_title_summary:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchModeTitleSummary:Landroid/widget/TextView;

    .line 91
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHolePunchFrontCam()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    sget p1, Lcom/android/settings/R$string;->oneplus_front_camera_display_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mFullScreenModeGuideTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->oneplus_front_camera_display_choose_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchModeTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->oneplus_show_front_camera_display_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchModeTitleSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->oneplus_show_front_camera_display_summary:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchModeTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->oneplus_hide_front_camera_display_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchModeTitleSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->oneplus_hide_front_camera_display_summary:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    sget p1, Lcom/android/settings/R$id;->op_show_notch_image:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    .line 102
    sget p1, Lcom/android/settings/R$id;->op_hide_notch_image:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    .line 103
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_front_camera_mode_guide_dark_8_series:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_fullscreen_mode_guide_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_compatibility_mode_guide_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 111
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 112
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_front_camera_mode_guide_light_8_series:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_fullscreen_mode_guide_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    :goto_1
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$drawable;->op_compatibility_mode_guide_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setCurrentMode()V

    return-void
.end method
