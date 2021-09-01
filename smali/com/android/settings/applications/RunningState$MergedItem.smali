.class Lcom/android/settings/applications/RunningState$MergedItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field mUser:Lcom/android/settings/applications/RunningState$UserState;


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 613
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 606
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 607
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 608
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 610
    iput p1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    iput p1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    return-void
.end method

.method private setDescription(Landroid/content/Context;II)V
    .locals 4

    .line 617
    iget v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    if-eq v0, p3, :cond_4

    .line 618
    :cond_0
    iput p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    .line 619
    iput p3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 620
    sget v0, Lcom/android/settings/R$string;->running_processes_item_description_s_s:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-eq p3, v1, :cond_1

    .line 623
    sget v0, Lcom/android/settings/R$string;->running_processes_item_description_p_p:I

    goto :goto_0

    .line 624
    :cond_1
    sget v0, Lcom/android/settings/R$string;->running_processes_item_description_p_s:I

    goto :goto_0

    :cond_2
    if-eq p3, v1, :cond_3

    .line 626
    sget v0, Lcom/android/settings/R$string;->running_processes_item_description_s_p:I

    .line 628
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    .line 629
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    .line 628
    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method public loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-nez v0, :cond_0

    .line 711
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 713
    :cond_0
    iget-object p2, v0, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 714
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-nez p1, :cond_1

    .line 716
    iget-object p0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 718
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x10804a2

    .line 721
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method update(Landroid/content/Context;Z)Z
    .locals 10

    .line 634
    iput-boolean p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    .line 636
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 642
    iget-object p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 643
    iget-object p2, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 644
    iget-object p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 645
    iput-object p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 648
    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    move p2, v5

    move v0, p2

    move v3, v0

    .line 649
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 650
    iget-object v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 651
    iget v6, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    add-int/2addr v0, v6

    .line 652
    iget v6, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    add-int/2addr v3, v6

    .line 653
    iget-wide v6, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v4, v6, v1

    if-ltz v4, :cond_1

    iget-wide v8, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_1

    .line 654
    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 657
    :cond_2
    iget-boolean p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-nez p2, :cond_7

    .line 658
    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    goto :goto_4

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 662
    iget-object v6, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 663
    iget-object v6, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-nez p2, :cond_5

    .line 666
    iget p2, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    move p2, v5

    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 667
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 666
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    .line 670
    :cond_5
    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    move p1, v5

    .line 671
    :goto_3
    iget-object p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 672
    iget-object p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 673
    iget-wide v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long p2, v3, v1

    if-ltz p2, :cond_6

    iget-wide v6, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long p2, v6, v3

    if-gez p2, :cond_6

    .line 674
    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return v5
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 7

    .line 683
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 684
    iput-wide v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move v0, v1

    .line 685
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 686
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 687
    invoke-virtual {v2, p1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 688
    iget-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iget-wide v5, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v2, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iput-wide v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move v0, v1

    .line 692
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 693
    iget-wide v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iget-object v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v4, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 697
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 699
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 700
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    :cond_2
    return v1
.end method
