.class public Lcom/oneplus/settings/security/OPSwitchRecordList;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "OPSwitchRecordList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;,
        Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;,
        Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;
    }
.end annotation


# instance fields
.field private mAllRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

.field private mRecordContentObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private mSpringRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

.field private mSwitchRecordAdapter:Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mAllRecordList:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Lcom/oneplus/settings/security/OPSwitchRecordList$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/security/OPSwitchRecordList$2;-><init>(Lcom/oneplus/settings/security/OPSwitchRecordList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mRecordContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/security/OPSwitchRecordList;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mSpringRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/security/OPSwitchRecordList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSwitchRecordList;->updateSwitchRecord()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/security/OPSwitchRecordList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSwitchRecordList;->setEmptyPageViewVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/security/OPSwitchRecordList;)Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mSwitchRecordAdapter:Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/security/OPSwitchRecordList;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mAllRecordList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setEmptyPageViewVisibility()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mSpringRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mAllRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mSpringRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 148
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mSpringRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSwitchRecord()V
    .locals 10

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mAllRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_switch_record"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get switch record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPSwitchRecordList"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    :try_start_0
    const-string v6, ":"

    .line 132
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 133
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v7, Ljava/util/Date;

    aget-object v8, v5, v3

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switch record time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", device ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v7, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mAllRecordList:Ljava/util/ArrayList;

    new-instance v9, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;

    aget-object v5, v5, v8

    invoke-direct {v9, v6, v5}, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get switch record time exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->op_switch_record_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSwitchRecordList;->updateSwitchRecord()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 83
    sget p0, Lcom/android/settings/R$layout;->op_switch_records:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    .line 72
    iget-boolean v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mRecordContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 59
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 60
    iget-boolean v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mRegistered:Z

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_switch_record"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mRecordContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 88
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    new-instance p2, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mAllRecordList:Ljava/util/ArrayList;

    invoke-direct {p2, v0, v1}, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mSwitchRecordAdapter:Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;

    .line 92
    sget p2, Lcom/android/settings/R$id;->record_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 94
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 94
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mSwitchRecordAdapter:Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 98
    sget v0, Lcom/android/settings/R$id;->spring_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mSpringRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    .line 99
    sget v1, Lcom/android/settings/R$id;->record_list:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->addSpringView(I)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mSpringRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 101
    new-instance v0, Lcom/oneplus/settings/security/OPSwitchRecordList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/security/OPSwitchRecordList$1;-><init>(Lcom/oneplus/settings/security/OPSwitchRecordList;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const p2, 0x1020004

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/emptyview/EmptyPageView;

    iput-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    .line 118
    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->op_switch_record_none:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyImageView()Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->op_empty:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSwitchRecordList;->setEmptyPageViewVisibility()V

    return-void
.end method
