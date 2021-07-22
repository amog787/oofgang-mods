.class public Lcom/android/settings/network/telephony/NetworkOperatorPreference;
.super Landroidx/preference/Preference;
.source "NetworkOperatorPreference.java"


# instance fields
.field private mCellId:Landroid/telephony/CellIdentity;

.field private mCellInfo:Landroid/telephony/CellInfo;

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdvancedScanSupported:Z

.field private mLevel:I

.field private mShow4GForLTE:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/CellIdentity;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/CellIdentity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p3, p4}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    const/4 p1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;Landroid/telephony/CellIdentity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/CellInfo;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/CellInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p3, p4}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    .line 79
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    .line 80
    iput-boolean p3, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    .line 81
    invoke-static {}, Lcom/android/settings/Utils;->isAdvancedPlmnScanSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mIsAdvancedScanSupported:Z

    return-void
.end method

.method private getCellSignalStrength(Landroid/telephony/CellInfo;)Landroid/telephony/CellSignalStrength;
    .locals 0

    .line 198
    instance-of p0, p1, Landroid/telephony/CellInfoGsm;

    if-eqz p0, :cond_0

    .line 199
    check-cast p1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    return-object p0

    .line 201
    :cond_0
    instance-of p0, p1, Landroid/telephony/CellInfoCdma;

    if-eqz p0, :cond_1

    .line 202
    check-cast p1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p0

    return-object p0

    .line 204
    :cond_1
    instance-of p0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz p0, :cond_2

    .line 205
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    return-object p0

    .line 207
    :cond_2
    instance-of p0, p1, Landroid/telephony/CellInfoTdscdma;

    if-eqz p0, :cond_3

    .line 208
    check-cast p1, Landroid/telephony/CellInfoTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoTdscdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object p0

    return-object p0

    .line 210
    :cond_3
    instance-of p0, p1, Landroid/telephony/CellInfoLte;

    if-eqz p0, :cond_4

    .line 211
    check-cast p1, Landroid/telephony/CellInfoLte;

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    return-object p0

    .line 213
    :cond_4
    instance-of p0, p1, Landroid/telephony/CellInfoNr;

    if-eqz p0, :cond_5

    .line 214
    check-cast p1, Landroid/telephony/CellInfoNr;

    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIconIdForCell(Landroid/telephony/CellInfo;)I
    .locals 1

    .line 178
    instance-of v0, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_0

    .line 179
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_g:I

    return p0

    .line 181
    :cond_0
    instance-of v0, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_1

    .line 182
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_1x:I

    return p0

    .line 184
    :cond_1
    instance-of v0, p1, Landroid/telephony/CellInfoWcdma;

    if-nez v0, :cond_6

    instance-of v0, p1, Landroid/telephony/CellInfoTdscdma;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 187
    :cond_2
    instance-of v0, p1, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_4

    .line 188
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    if-eqz p0, :cond_3

    .line 189
    sget p0, Lcom/android/settings/R$drawable;->ic_signal_strength_4g:I

    goto :goto_0

    :cond_3
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_lte:I

    :goto_0
    return p0

    .line 191
    :cond_4
    instance-of p0, p1, Landroid/telephony/CellInfoNr;

    if-eqz p0, :cond_5

    .line 192
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_5g:I

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    .line 185
    :cond_6
    :goto_1
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_3g:I

    return p0
.end method

.method private updateCell(Landroid/telephony/CellInfo;Landroid/telephony/CellIdentity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    .line 93
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->refresh()V

    return-void
.end method

.method private updateIcon(I)V
    .locals 4

    .line 220
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mIsAdvancedScanSupported:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    sget v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    .line 225
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getIconIdForCell(Landroid/telephony/CellInfo;)I

    move-result v2

    const/4 v3, 0x0

    .line 224
    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessNetworkType()I
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v0

    :goto_0
    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v4

    .line 244
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessNetworkType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), mCellId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkOperatorPref"

    .line 244
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellIdentity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 148
    :cond_0
    instance-of v1, p0, Landroid/telephony/CellIdentityGsm;

    if-eqz v1, :cond_1

    .line 149
    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1
    instance-of v1, p0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v1, :cond_2

    .line 152
    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 154
    :cond_2
    instance-of v1, p0, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v1, :cond_3

    .line 155
    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 157
    :cond_3
    instance-of v1, p0, Landroid/telephony/CellIdentityLte;

    if-eqz v1, :cond_4

    .line 158
    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 160
    :cond_4
    instance-of v1, p0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_6

    .line 161
    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    return-object v0

    .line 165
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public isSameCell(Landroid/telephony/CellInfo;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentity(Landroid/telephony/CellInfo;)Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public refresh()V
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->forbidden_network:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, ""

    .line 120
    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    if-nez v0, :cond_1

    return-void

    .line 126
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getCellSignalStrength(Landroid/telephony/CellInfo;)Landroid/telephony/CellSignalStrength;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 129
    :goto_0
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    .line 130
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    return-void
.end method

.method public updateCell(Landroid/telephony/CellInfo;)V
    .locals 1

    .line 88
    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentity(Landroid/telephony/CellInfo;)Landroid/telephony/CellIdentity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;Landroid/telephony/CellIdentity;)V

    return-void
.end method
