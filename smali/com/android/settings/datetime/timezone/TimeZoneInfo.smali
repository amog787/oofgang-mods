.class public Lcom/android/settings/datetime/timezone/TimeZoneInfo;
.super Ljava/lang/Object;
.source "TimeZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;,
        Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;
    }
.end annotation


# instance fields
.field private final mDaylightName:Ljava/lang/String;

.field private final mExemplarLocation:Ljava/lang/String;

.field private final mGenericName:Ljava/lang/String;

.field private final mGmtOffset:Ljava/lang/CharSequence;

.field private final mId:Ljava/lang/String;

.field private final mStandardName:Ljava/lang/String;

.field private final mTimeZone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$000(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Landroid/icu/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    .line 43
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mId:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$100(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGenericName:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$200(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mStandardName:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$300(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mDaylightName:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$400(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mExemplarLocation:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$500(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGmtOffset:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getDaylightName()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mDaylightName:Ljava/lang/String;

    return-object p0
.end method

.method public getExemplarLocation()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mExemplarLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getGenericName()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGenericName:Ljava/lang/String;

    return-object p0
.end method

.method public getGmtOffset()Ljava/lang/CharSequence;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGmtOffset:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getStandardName()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mStandardName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    return-object p0
.end method
