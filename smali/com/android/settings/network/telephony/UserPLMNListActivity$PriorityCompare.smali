.class Lcom/android/settings/network/telephony/UserPLMNListActivity$PriorityCompare;
.super Ljava/lang/Object;
.source "UserPLMNListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/UserPLMNListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PriorityCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)I
    .locals 0

    .line 418
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->getPriority()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->getPriority()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 415
    check-cast p1, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    check-cast p2, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/UserPLMNListActivity$PriorityCompare;->compare(Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;)I

    move-result p0

    return p0
.end method
