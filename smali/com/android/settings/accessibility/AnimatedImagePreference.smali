.class public Lcom/android/settings/accessibility/AnimatedImagePreference;
.super Landroidx/preference/Preference;
.source "AnimatedImagePreference.java"


# instance fields
.field private mImageRes:I

.field private mImageUri:Landroid/net/Uri;

.field private mMaxHeight:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    .line 96
    iput p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageRes:I

    .line 41
    sget p1, Lcom/android/settings/R$layout;->preference_animated_image:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 48
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->animated_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget v0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageRes:I

    if-ne v2, v1, :cond_2

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 62
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    instance-of v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v2, :cond_2

    .line 64
    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 68
    :cond_2
    iget p0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    if-le p0, v1, :cond_3

    .line 69
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    :cond_3
    return-void
.end method

.method public setImageRes(I)V
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageRes:I

    if-eq p1, v0, :cond_0

    .line 92
    iput p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageRes:I

    .line 93
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageUri:Landroid/net/Uri;

    .line 81
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 105
    iget v0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    if-eq p1, v0, :cond_0

    .line 106
    iput p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    .line 107
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
