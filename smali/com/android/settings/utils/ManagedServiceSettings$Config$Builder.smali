.class public Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ManagedServiceSettings$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfigIntentAction:Ljava/lang/String;

.field private mEmptyText:I

.field private mIntentAction:Ljava/lang/String;

.field private mNoun:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;

.field private mSetting:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mWarningDialogSummary:I

.field private mWarningDialogTitle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 12

    .line 311
    new-instance v11, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mSetting:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mIntentAction:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mConfigIntentAction:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mPermission:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mNoun:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mWarningDialogTitle:I

    iget v8, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mWarningDialogSummary:I

    iget v9, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mEmptyText:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/settings/utils/ManagedServiceSettings$1;)V

    return-object v11
.end method

.method public setConfigurationIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mConfigIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setEmptyText(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    .locals 0

    .line 306
    iput p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mEmptyText:I

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mNoun:Ljava/lang/String;

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mPermission:Ljava/lang/String;

    return-object p0
.end method

.method public setSetting(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mSetting:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setWarningDialogSummary(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    .locals 0

    .line 301
    iput p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mWarningDialogSummary:I

    return-object p0
.end method

.method public setWarningDialogTitle(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    .locals 0

    .line 296
    iput p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->mWarningDialogTitle:I

    return-object p0
.end method
