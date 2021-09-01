.class public Lcom/android/settings/wifi/LinkablePreference;
.super Landroidx/preference/Preference;
.source "LinkablePreference.java"


# instance fields
.field private mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    sget v0, Lcom/android/settingslib/R$attr;->footerPreferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 63
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    if-nez v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    const-string v2, "\n\n"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-static {p1, v1, v2}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 84
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1030046

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 87
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/16 v3, 0x11

    .line 84
    invoke-interface {v1, v2, v0, p0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 89
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance p0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 106
    iput-object p2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 107
    iput-object p3, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    .line 109
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 118
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 119
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    .line 128
    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 129
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
