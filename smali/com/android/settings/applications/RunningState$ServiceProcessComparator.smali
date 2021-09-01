.class Lcom/android/settings/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I
    .locals 4

    .line 728
    iget v0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    .line 729
    iget-object p0, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    iget p0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, p0, :cond_0

    return v3

    :cond_0
    if-ne v1, p0, :cond_1

    return v2

    :cond_1
    if-ge v0, v1, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 733
    :cond_3
    iget-boolean p0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 737
    :cond_5
    iget-boolean p0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq p0, v0, :cond_7

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    move v2, v3

    :goto_0
    return v2

    .line 741
    :cond_7
    iget-wide p0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long p2, p0, v0

    if-eqz p2, :cond_9

    cmp-long p0, p0, v0

    if-lez p0, :cond_8

    move v2, v3

    :cond_8
    return v2

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 726
    check-cast p1, Lcom/android/settings/applications/RunningState$ProcessItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->compare(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I

    move-result p0

    return p0
.end method
