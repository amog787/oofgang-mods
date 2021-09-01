.class public Lcom/oneplus/settings/OPFontStyleSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFontStyleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSlateFont:Landroid/view/View;

.field private mSlateFontButton:Landroid/widget/RadioButton;

.field private mSystemFont:Landroid/view/View;

.field private mSystemFontButton:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/oneplus/settings/OPFontStyleSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPFontStyleSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPFontStyleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private setFontStyle(I)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/OPFontStyleSettings$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/OPFontStyleSettings$1;-><init>(Lcom/oneplus/settings/OPFontStyleSettings;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->system_font:I

    const-string v2, "oem_font_mode"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v4, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-direct {p0, v4}, Lcom/oneplus/settings/OPFontStyleSettings;->setFontStyle(I)V

    .line 87
    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 88
    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->slate_font:I

    if-ne p1, v0, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    return-void

    .line 92
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPFontStyleSettings;->setFontStyle(I)V

    .line 93
    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->oneplus_font_style:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 52
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 53
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 55
    sget v0, Lcom/android/settings/R$layout;->op_font_style:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    sget p3, Lcom/android/settings/R$id;->system_font_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    .line 58
    sget p3, Lcom/android/settings/R$id;->slate_font_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    .line 59
    sget p3, Lcom/android/settings/R$id;->system_font:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFont:Landroid/view/View;

    .line 60
    sget p3, Lcom/android/settings/R$id;->slate_font:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFont:Landroid/view/View;

    .line 63
    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFont:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFont:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onResume()V
    .locals 5

    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 76
    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
