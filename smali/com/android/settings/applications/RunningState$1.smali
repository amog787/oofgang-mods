.class Lcom/android/settings/applications/RunningState$1;
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
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/RunningState$MergedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I
    .locals 7

    .line 151
    iget v0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    .line 152
    iget-object p0, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget p0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, p0, :cond_0

    return v2

    :cond_0
    if-ne v1, p0, :cond_1

    return v3

    :cond_1
    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 156
    :cond_3
    iget-object p0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 157
    iget-object p0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-ne p0, p1, :cond_4

    return v1

    :cond_4
    if-eqz p0, :cond_5

    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_5
    return v2

    :cond_6
    if-nez p0, :cond_7

    return v2

    :cond_7
    if-nez v0, :cond_8

    return v3

    .line 166
    :cond_8
    iget-object p0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 168
    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 170
    iget v4, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-lt v4, v5, :cond_9

    move v4, v3

    goto :goto_1

    :cond_9
    move v4, v1

    .line 172
    :goto_1
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v6, v5, :cond_a

    move v5, v3

    goto :goto_2

    :cond_a
    move v5, v1

    :goto_2
    if-eq v4, v5, :cond_c

    if-eqz v4, :cond_b

    move v2, v3

    :cond_b
    return v2

    .line 178
    :cond_c
    iget v4, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_d

    move v4, v3

    goto :goto_3

    :cond_d
    move v4, v1

    .line 180
    :goto_3
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_e

    move v5, v3

    goto :goto_4

    :cond_e
    move v5, v1

    :goto_4
    if-eq v4, v5, :cond_10

    if-eqz v4, :cond_f

    goto :goto_5

    :cond_f
    move v2, v3

    :goto_5
    return v2

    .line 187
    :cond_10
    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq p0, v0, :cond_12

    if-ge p0, v0, :cond_11

    goto :goto_6

    :cond_11
    move v2, v3

    :goto_6
    return v2

    .line 190
    :cond_12
    iget-object p0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-ne p0, p1, :cond_13

    return v1

    :cond_13
    if-nez p0, :cond_14

    return v3

    :cond_14
    if-nez p1, :cond_15

    return v2

    .line 195
    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 143
    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$1;->compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I

    move-result p0

    return p0
.end method
