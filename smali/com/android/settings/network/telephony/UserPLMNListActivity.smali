.class public Lcom/android/settings/network/telephony/UserPLMNListActivity;
.super Landroid/preference/PreferenceActivity;
.source "UserPLMNListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;,
        Lcom/android/settings/network/telephony/UserPLMNListActivity$PriorityCompare;,
        Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;
    }
.end annotation


# instance fields
.field private mAirplaneModeOn:Z

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mHandler:Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;

.field protected mIsForeground:Z

.field private mNumRec:I

.field private mOldInfo:Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

.field private mPhoneId:I

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/preference/Preference;",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUPLMNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation
.end field

.field private mUPLMNListContainer:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 112
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mPreferenceMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mNumRec:I

    .line 116
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mAirplaneModeOn:Z

    .line 117
    iput v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mPhoneId:I

    .line 118
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mIsForeground:Z

    .line 120
    new-instance v0, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;-><init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;Lcom/android/settings/network/telephony/UserPLMNListActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mHandler:Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;

    .line 127
    new-instance v0, Lcom/android/settings/network/telephony/UserPLMNListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity$1;-><init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/network/telephony/UserPLMNListActivity;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/network/telephony/UserPLMNListActivity;)Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mHandler:Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->getUPLMNInfoFromEf()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/network/telephony/UserPLMNListActivity;)Landroid/preference/PreferenceScreen;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/network/telephony/UserPLMNListActivity;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/settings/network/telephony/UserPLMNListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/network/telephony/UserPLMNListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->refreshUPLMNListPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addUPLMNPreference(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)V
    .locals 4

    .line 423
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->getNetworMode()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->getNetworkModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 428
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private convertAccessTech2NetworkMode(I)I
    .locals 1

    and-int/lit16 p0, p1, 0x4000

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    or-int/lit8 p0, p0, 0x4

    :cond_1
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_2

    or-int/lit8 p0, p0, 0x1

    :cond_2
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_3

    or-int/lit8 p0, p0, 0x2

    :cond_3
    return p0
.end method

.method private convertNetworkMode2AccessTech(I)I
    .locals 1

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_0

    const/16 p0, 0x4000

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    const v0, 0x8000

    or-int/2addr p0, v0

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    or-int/lit16 p0, p0, 0x80

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    or-int/lit8 p0, p0, 0x40

    :cond_3
    return p0
.end method

.method private createNetworkInfofromIntent(Landroid/content/Intent;)Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;
    .locals 4

    const-string/jumbo v0, "uplmn_code"

    .line 465
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uplmn_priority"

    const/4 v2, 0x0

    .line 466
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "uplmn_service"

    .line 467
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 468
    new-instance v2, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;-><init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;Ljava/lang/String;II)V

    return-object v2
.end method

.method private dismissDialogSafely(I)V
    .locals 0

    .line 272
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private dumpUPLMNInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 546
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpUPLMNInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getNetworkModeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPLMNListActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->convertEFMode2Ap(I)I

    move-result p1

    .line 728
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->uplmn_cu_mcc_mnc_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 729
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 730
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$array;->uplmn_prefer_network_mode_w_choices:I

    .line 732
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$array;->uplmn_prefer_network_mode_td_choices:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getUPLMNInfoFromEf()V
    .locals 1

    const-string v0, "UPLMNInfoFromEf Start read..."

    .line 292
    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    const/16 v0, 0x6f60

    .line 293
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->readEfFromIcc(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "UserPLMNListActivity"

    const-string v0, "mIccFileHandler is null"

    .line 294
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private handleAddList(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)V
    .locals 3

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAddList: add new network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 528
    :goto_0
    iget-object v2, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 529
    iget-object v2, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    :cond_0
    new-instance v1, Lcom/android/settings/network/telephony/UserPLMNListActivity$PriorityCompare;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity$PriorityCompare;-><init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V

    .line 532
    iget-object v2, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-static {v2, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 534
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 536
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->updateListPriority(Ljava/util/ArrayList;)V

    .line 538
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 539
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->handleSetUPLMN(Ljava/util/ArrayList;)V

    return-void
.end method

.method private handleDeleteList(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeleteList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    new-instance v1, Lcom/android/settings/network/telephony/UserPLMNListActivity$PriorityCompare;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity$PriorityCompare;-><init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V

    .line 595
    iget-object v2, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-static {v2, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    const/4 v2, 0x0

    .line 597
    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 598
    iget-object v3, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 602
    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->setOperatorNumeric(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->updateListPriority(Ljava/util/ArrayList;)V

    .line 606
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->dumpUPLMNInfo(Ljava/util/List;)V

    return-object v0
.end method

.method private handleModifiedList(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleModifiedList: change old info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " new info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 557
    new-instance v0, Lcom/android/settings/network/telephony/UserPLMNListActivity$PriorityCompare;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity$PriorityCompare;-><init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V

    .line 558
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-static {v1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p2

    .line 559
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 562
    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 563
    iget-object v3, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    .line 567
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 568
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-ge p2, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 570
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 571
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 573
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 577
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->updateListPriority(Ljava/util/ArrayList;)V

    .line 578
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->dumpUPLMNInfo(Ljava/util/List;)V

    return-object v1
.end method

.method private handleSetUPLMN(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .line 487
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->showSavingDialog()V

    .line 488
    iget v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mNumRec:I

    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 490
    :goto_0
    iget v3, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mNumRec:I

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x5

    const/4 v4, -0x1

    .line 491
    aput-byte v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    .line 492
    aput-byte v4, v0, v5

    add-int/lit8 v5, v3, 0x2

    .line 493
    aput-byte v4, v0, v5

    add-int/lit8 v4, v3, 0x3

    .line 495
    aput-byte v1, v0, v4

    add-int/lit8 v3, v3, 0x4

    .line 496
    aput-byte v1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 498
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mNumRec:I

    if-ge v2, v3, :cond_2

    .line 499
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    .line 500
    invoke-virtual {v3}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    .line 504
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strOperNumeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 506
    invoke-static {v4}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->stringToBcdPlmn(Ljava/lang/String;)[B

    move-result-object v4

    mul-int/lit8 v5, v2, 0x5

    const/4 v6, 0x3

    invoke-static {v4, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data[0] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data[1] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v0, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data[2] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v0, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v3}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->getNetworMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->convertNetworkMode2AccessTech(I)I

    move-result v3

    add-int/lit8 v4, v5, 0x3

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    .line 513
    aput-byte v6, v0, v4

    add-int/lit8 v5, v5, 0x4

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    .line 514
    aput-byte v6, v0, v5

    .line 515
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accessTech = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data[3] = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data[4] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    :goto_2
    const-string/jumbo p1, "update EFuplmn Start."

    .line 520
    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    const/16 p1, 0x6f60

    .line 521
    invoke-direct {p0, v0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->writeEfToIcc([BI)Z

    return-void
.end method

.method private hasGetIccFileHandler()Z
    .locals 3

    const/4 v0, 0x0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    iget p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lorg/codeaurora/internal/IExtTelephony;->hasGetIccFileHandler(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "UserPLMNListActivity"

    const-string v2, "hasGetIccFileHandler Exception: "

    .line 305
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UserPLMNListActivity"

    .line 744
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readEfFromIcc(I)Z
    .locals 3

    const/4 v0, 0x0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    iget p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, p1}, Lorg/codeaurora/internal/IExtTelephony;->readEfFromIcc(III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UserPLMNListActivity"

    const-string v1, "readEfFromIcc Exception: "

    .line 318
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private refreshUPLMNListPreference(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mPreferenceMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 344
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 348
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    :cond_2
    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    const-string v0, "refreshUPLMNListPreference : NULL UPLMN list!"

    if-nez p1, :cond_3

    .line 352
    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshUPLMNListPreference : list.size()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_6

    .line 357
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 367
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    .line 368
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->addUPLMNPreference(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)V

    .line 370
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void

    .line 359
    :cond_6
    :goto_2
    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    if-nez p1, :cond_7

    .line 362
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    :cond_7
    return-void
.end method

.method private setScreenEnabled()V
    .locals 2

    .line 739
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mAirplaneModeOn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 740
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private showReadingDialog()V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->hasGetIccFileHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    .line 260
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->showDialog(I)V

    :cond_0
    return-void
.end method

.method private showSavingDialog()V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    .line 266
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->showDialog(I)V

    :cond_0
    return-void
.end method

.method public static stringToBcdPlmn(Ljava/lang/String;)[B
    .locals 5

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "f"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 476
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 479
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    aget-byte v3, p0, v1

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 480
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    aget-byte v4, p0, v3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xf0

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 481
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xf0

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-object v0
.end method

.method private updateListPriority(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .line 584
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    add-int/lit8 v1, p1, 0x1

    .line 585
    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->setPriority(I)V

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeEfToIcc([BI)Z
    .locals 3

    const/4 v0, 0x0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    iget p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, p2, p1}, Lorg/codeaurora/internal/IExtTelephony;->writeEfToIcc(III[B)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UserPLMNListActivity"

    const-string/jumbo p2, "writeEfToIcc Exception: "

    .line 332
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public handleGetEFDone([B)V
    .locals 13

    const-string v0, "handleGetEFDone: done"

    .line 650
    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 653
    array-length v0, p1

    const/4 v1, 0x5

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mNumRec:I

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a PlmnActRecord, raw="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 656
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object p1

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlmnActRecords="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 662
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, p1, v4

    .line 663
    iget-object v7, v6, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x5

    const-string v10, "FFFFF"

    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, v6, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget-object v7, v6, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    .line 665
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    .line 666
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v1, :cond_0

    .line 667
    new-instance v7, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    iget-object v8, v6, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    iget v6, v6, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    .line 669
    invoke-direct {p0, v6}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->convertAccessTech2NetworkMode(I)I

    move-result v6

    invoke-direct {v7, p0, v8, v6, v5}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;-><init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;Ljava/lang/String;II)V

    .line 667
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 675
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mHandler:Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 676
    iput v3, p1, Landroid/os/Message;->what:I

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetEFDone : ret.size()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    .line 683
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 684
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mHandler:Lcom/android/settings/network/telephony/UserPLMNListActivity$MyHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 451
    invoke-direct {p0, p3}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->createNetworkInfofromIntent(Landroid/content/Intent;)Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    move-result-object p3

    const/16 v0, 0x66

    if-ne p2, v0, :cond_0

    .line 453
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mOldInfo:Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->handleDeleteList(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->handleSetUPLMN(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x65

    if-ne p2, v1, :cond_2

    if-ne p1, v1, :cond_1

    .line 456
    invoke-direct {p0, p3}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->handleAddList(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 458
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mOldInfo:Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    invoke-direct {p0, p3, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->handleModifiedList(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->handleSetUPLMN(Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 177
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 181
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    sget p1, Lcom/android/settings/R$xml;->uplmn_settings:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const-string p1, "button_uplmn_list_key"

    .line 183
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 186
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mPhoneId:I

    const-string p1, "qti.radio.extphone"

    .line 190
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 192
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.qualcomm.qti.intent.action.ACTION_WRITE_EF_RESULT"

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.qualcomm.qti.intent.action.ACTION_READ_EF_RESULT"

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 158
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 159
    sget v1, Lcom/android/settings/R$string;->uplmn_settings_title:I

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/16 v2, 0x63

    if-eq p1, v2, :cond_1

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 168
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 169
    sget p1, Lcom/android/settings/R$string;->updating_settings:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0

    .line 163
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 164
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 165
    sget p1, Lcom/android/settings/R$string;->reading_settings:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 222
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 223
    sget p0, Lcom/android/settings/R$string;->uplmn_list_setting_add_plmn:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 224
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinished reading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p2, 0x63

    .line 283
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->dismissDialogSafely(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    .line 285
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->dismissDialogSafely(I)V

    :goto_0
    const/4 p2, 0x1

    .line 287
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->setScreenEnabled()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return v1

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->hasGetIccFileHandler()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 241
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "uplmn_code"

    const-string v3, ""

    .line 242
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "uplmn_priority"

    const/4 v3, 0x0

    .line 243
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "uplmn_service"

    .line 244
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "uplmn_add"

    .line 245
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string/jumbo v2, "uplmn_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x65

    .line 247
    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mIsForeground:Z

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .line 433
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    .line 435
    iput-object p2, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mOldInfo:Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    .line 437
    invoke-virtual {p2}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uplmn_code"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p2}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->getPriority()I

    move-result v0

    const-string/jumbo v1, "uplmn_priority"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-virtual {p2}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->getNetworMode()I

    move-result p2

    const-string/jumbo v0, "uplmn_service"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p2, "uplmn_add"

    const/4 v0, 0x0

    .line 440
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    iget-object p2, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mUPLMNList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const-string/jumbo v0, "uplmn_size"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p2, 0x66

    .line 442
    invoke-virtual {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 231
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mAirplaneModeOn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 233
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 206
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mIsForeground:Z

    .line 208
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->getUPLMNInfoFromEf()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNListActivity;->showReadingDialog()V

    .line 210
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity;->mAirplaneModeOn:Z

    return-void
.end method
