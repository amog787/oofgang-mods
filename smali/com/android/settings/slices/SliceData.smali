.class public Lcom/android/settings/slices/SliceData;
.super Ljava/lang/Object;
.source "SliceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/slices/SliceData$InvalidSliceDataException;,
        Lcom/android/settings/slices/SliceData$Builder;
    }
.end annotation


# instance fields
.field private final mFragmentClassName:Ljava/lang/String;

.field private final mIconResource:I

.field private final mIsPublicSlice:Z

.field private final mKey:Ljava/lang/String;

.field private final mKeywords:Ljava/lang/String;

.field private final mPreferenceController:Ljava/lang/String;

.field private final mScreenTitle:Ljava/lang/CharSequence;

.field private final mSliceType:I

.field private final mSummary:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUnavailableSliceSubtitle:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/android/settings/slices/SliceData$Builder;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$000(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$100(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$200(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mSummary:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$300(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    .line 131
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$400(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mKeywords:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$500(Lcom/android/settings/slices/SliceData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/slices/SliceData;->mIconResource:I

    .line 133
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$600(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mFragmentClassName:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$700(Lcom/android/settings/slices/SliceData$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    .line 135
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$800(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mPreferenceController:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$900(Lcom/android/settings/slices/SliceData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/slices/SliceData;->mSliceType:I

    .line 137
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$1000(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mUnavailableSliceSubtitle:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$1100(Lcom/android/settings/slices/SliceData$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/slices/SliceData;->mIsPublicSlice:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/slices/SliceData$Builder;Lcom/android/settings/slices/SliceData$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SliceData;-><init>(Lcom/android/settings/slices/SliceData$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 148
    instance-of v0, p1, Lcom/android/settings/slices/SliceData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 151
    :cond_0
    check-cast p1, Lcom/android/settings/slices/SliceData;

    .line 152
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getFragmentClassName()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getIconResource()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/settings/slices/SliceData;->mIconResource:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceController()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mPreferenceController:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSliceType()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/android/settings/slices/SliceData;->mSliceType:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUnavailableSliceSubtitle()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mUnavailableSliceSubtitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/android/settings/slices/SliceData;->mIsPublicSlice:Z

    return p0
.end method
