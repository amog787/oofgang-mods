.class public Lcom/oneplus/settings/ui/OpClockExtra;
.super Landroid/widget/ImageView;
.source "OpClockExtra.java"

# interfaces
.implements Lcom/oneplus/settings/utils/OpBitmojiAodHelper$OnBitmojiAvatarChangedListener;


# instance fields
.field private mClockStyle:I

.field private mHelper:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OpClockExtra;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OpClockExtra;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 13
    iput p2, p0, Lcom/oneplus/settings/ui/OpClockExtra;->mClockStyle:I

    .line 26
    new-instance p2, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-direct {p2, p1}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OpClockExtra;->mHelper:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    return-void
.end method

.method private updateInner()V
    .locals 2

    .line 54
    iget v0, p0, Lcom/oneplus/settings/ui/OpClockExtra;->mClockStyle:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/ui/OpClockExtra;->mHelper:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-virtual {v0}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/ui/OpClockExtra;->mHelper:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->registerObserver(Lcom/oneplus/settings/utils/OpBitmojiAodHelper$OnBitmojiAvatarChangedListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x8

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object p0, p0, Lcom/oneplus/settings/ui/OpClockExtra;->mHelper:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->unregisterObserver()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBitmojiAvatarChanged()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OpClockExtra;->updateInner()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 31
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 33
    iget-object p0, p0, Lcom/oneplus/settings/ui/OpClockExtra;->mHelper:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->unregisterObserver()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    .line 40
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OpClockExtra;->updateInner()V

    return-void
.end method

.method public update(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/oneplus/settings/ui/OpClockExtra;->mClockStyle:I

    .line 50
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OpClockExtra;->updateInner()V

    return-void
.end method
