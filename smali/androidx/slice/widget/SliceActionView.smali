.class public Landroidx/slice/widget/SliceActionView;
.super Landroid/widget/FrameLayout;
.source "SliceActionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceActionView$ImageToggle;,
        Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;
    }
.end annotation


# static fields
.field static final CHECKED_STATE_SET:[I


# instance fields
.field private mActionView:Landroid/view/View;

.field private mEventInfo:Landroidx/slice/widget/EventInfo;

.field private mIconSize:I

.field private mImageSize:I

.field private mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

.field private mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSliceAction:Landroidx/slice/core/SliceActionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 61
    sput-object v0, Landroidx/slice/widget/SliceActionView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 83
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    .line 84
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    return-void
.end method

.method private sendActionInternal()V
    .locals 4

    .line 250
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 255
    :try_start_0
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 258
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    .line 259
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.TOGGLE_STATE"

    .line 260
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 262
    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v3, :cond_2

    .line 263
    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, v3, Landroidx/slice/widget/EventInfo;->state:I

    :cond_2
    move-object v0, v2

    .line 266
    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 267
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceActionView;->setLoading(Z)V

    .line 270
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz v0, :cond_5

    .line 271
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    iget v0, v0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    .line 272
    :goto_1
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 275
    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v0, :cond_7

    .line 276
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 279
    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    instance-of v2, p0, Landroid/widget/Checkable;

    if-eqz v2, :cond_6

    .line 280
    move-object v2, p0

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    const-string p0, "SliceActionView"

    const-string v1, "PendingIntent for slice cannot be sent"

    .line 282
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public getAction()Landroidx/slice/core/SliceActionImpl;
    .locals 0

    .line 215
    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-object p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 228
    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 220
    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendAction()V
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->toggle()V

    goto :goto_0

    .line 245
    :cond_1
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    :goto_0
    return-void
.end method

.method public setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V
    .locals 7

    .line 93
    sget-object v0, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    sget-object v1, Landroidx/slice/widget/SliceActionView;->CHECKED_STATE_SET:[I

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 95
    iput-object v3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 97
    :cond_0
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 99
    iput-object v3, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    .line 101
    :cond_1
    iput-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 102
    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    .line 103
    iput-object p3, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 104
    iput-object v3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 105
    iput-object p5, p0, Landroidx/slice/widget/SliceActionView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 107
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result p2

    const/4 p3, -0x1

    const/4 p5, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v3, Landroidx/slice/view/R$layout;->abc_slice_switch:I

    invoke-virtual {p2, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    .line 110
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isChecked()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 111
    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget v3, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {p2, v3}, Landroid/widget/Switch;->setMinimumHeight(I)V

    .line 113
    iget v3, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {p2, v3}, Landroid/widget/Switch;->setMinimumWidth(I)V

    .line 114
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eq p4, p3, :cond_3

    .line 117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v3, 0x1010030

    invoke-static {p3, v3}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(Landroid/content/Context;I)I

    move-result p3

    .line 120
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v4, p5, [[I

    aput-object v1, v4, v2

    const/4 v5, 0x1

    aput-object v0, v4, v5

    new-array v6, p5, [I

    aput p4, v6, v2

    aput p3, v6, v5

    invoke-direct {v3, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 124
    invoke-virtual {p2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 125
    invoke-static {p3, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 126
    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v3, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p3, v3}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(Landroid/content/Context;I)I

    move-result p3

    if-nez p3, :cond_2

    .line 133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v3, Landroidx/appcompat/R$color;->switch_thumb_normal_material_light:I

    invoke-static {p3, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 137
    :cond_2
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v4, p5, [[I

    aput-object v1, v4, v2

    aput-object v0, v4, v5

    new-array p5, p5, [I

    aput p4, p5, v2

    aput p3, p5, v5

    invoke-direct {v3, v4, p5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 141
    invoke-virtual {p2}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 142
    invoke-static {p3, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 143
    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_3
    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    goto/16 :goto_1

    .line 147
    :cond_4
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 148
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 149
    new-instance p2, Landroidx/slice/widget/SliceActionView$ImageToggle;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/slice/widget/SliceActionView$ImageToggle;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/slice/widget/SliceActionView$ImageToggle;->setChecked(Z)V

    .line 151
    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 153
    :cond_5
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 155
    :goto_0
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p2}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 158
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eq p4, p3, :cond_6

    .line 159
    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p3}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result p3

    if-nez p3, :cond_6

    if-eqz p2, :cond_6

    .line 161
    invoke-static {p2, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 163
    :cond_6
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 164
    iget p3, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 165
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 166
    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result p2

    if-nez p2, :cond_7

    iget p2, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    div-int/lit8 v2, p2, 0x2

    .line 168
    :cond_7
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const p2, 0x101030e

    .line 170
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_8

    const p2, 0x101045c

    .line 173
    :cond_8
    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_9
    :goto_1
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz p2, :cond_b

    .line 178
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 179
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_2

    .line 180
    :cond_a
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 181
    :goto_2
    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setLoading(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 190
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_progress_view:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    .line 193
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->tintIndeterminateProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 197
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 205
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->toggle()V

    :cond_0
    return-void
.end method
