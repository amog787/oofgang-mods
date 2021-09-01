.class Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NetworkRequestDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessPointAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 237
    iput p3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;->mResourceId:I

    .line 238
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 244
    iget-object p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;->mResourceId:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 246
    sget p3, Lcom/android/settingslib/R$id;->two_target_divider:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 248
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    const p3, 0x1020016

    .line 253
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 256
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 257
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p3, 0x1020010

    .line 260
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    .line 262
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const p3, 0x1020006

    .line 271
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/preference/internal/PreferenceImageView;

    .line 272
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 273
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiStandard()I

    move-result v2

    .line 274
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isHe8ssCapableAp()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isVhtMax8SpatialStreamsSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz p3, :cond_5

    .line 277
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 278
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/Utils;->getWifiIconResource(IIZ)I

    move-result v0

    .line 277
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 280
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010429

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 279
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 281
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-object p2
.end method
