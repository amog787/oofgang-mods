.class Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;
.super Ljava/lang/Object;
.source "RegionSearchPicker.java"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/RegionSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegionItem"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mItemId:J

.field private final mName:Ljava/lang/String;

.field private final mSearchKeys:[Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mId:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mName:Ljava/lang/String;

    .line 136
    iput-wide p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mItemId:J

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object p4, p1, p2

    .line 140
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mSearchKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentTime()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getItemId()J
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mItemId:J

    return-wide v0
.end method

.method public getSearchKeys()[Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mSearchKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mName:Ljava/lang/String;

    return-object p0
.end method
