.class public Lcom/oneplus/settings/widget/WallOfTextPreference;
.super Lcom/oneplus/settings/widget/DividerPreference;
.source "WallOfTextPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/widget/DividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/oneplus/settings/widget/DividerPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x1020010

    .line 34
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 p1, 0x14

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method
