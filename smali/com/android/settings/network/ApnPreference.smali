.class public Lcom/android/settings/network/ApnPreference;
.super Landroidx/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mHideDetails:Z

.field private mProtectFromCheckedChange:Z

.field private mRadioEnable:Z

.field private mSelectable:Z

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    sget v0, Lcom/android/settings/R$attr;->apnPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    .line 75
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mHideDetails:Z

    .line 77
    iput-boolean p2, p0, Lcom/android/settings/network/ApnPreference;->mRadioEnable:Z

    return-void
.end method

.method public static setSelectedKey(Ljava/lang/String;)V
    .locals 0

    .line 126
    sput-object p0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 89
    sget v0, Lcom/android/settings/R$id;->apn_radiobutton:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 90
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 91
    check-cast p1, Landroid/widget/RadioButton;

    .line 92
    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sput-object p1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 106
    iget-boolean p0, p0, Lcom/android/settings/network/ApnPreference;->mRadioEnable:Z

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 109
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 136
    sget-object p2, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 139
    :cond_1
    sput-object p1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 141
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 143
    sput-object p0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 144
    sput-object p0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected onClick()V
    .locals 6

    .line 173
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 174
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    iget-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mHideDetails:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 177
    sget p0, Lcom/android/settings/R$string;->cannot_change_apn_toast:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 182
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 183
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    iget p0, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    const-string v1, "sub_id"

    invoke-virtual {v3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public setChecked()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setHideDetails()V
    .locals 1

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mHideDetails:Z

    return-void
.end method

.method public setRadioButtonEnable(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mRadioEnable:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    return-void
.end method
