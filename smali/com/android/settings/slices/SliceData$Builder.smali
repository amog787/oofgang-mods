.class Lcom/android/settings/slices/SliceData$Builder;
.super Ljava/lang/Object;
.source "SliceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/slices/SliceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mFragmentClassName:Ljava/lang/String;

.field private mIconResource:I

.field private mIsPublicSlice:Z

.field private mKey:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mPrefControllerClassName:Ljava/lang/String;

.field private mScreenTitle:Ljava/lang/CharSequence;

.field private mSliceType:I

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUnavailableSliceSubtitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mUnavailableSliceSubtitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/slices/SliceData$Builder;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mIsPublicSlice:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/slices/SliceData$Builder;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mIconResource:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/slices/SliceData$Builder;)Landroid/net/Uri;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/slices/SliceData$Builder;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/android/settings/slices/SliceData$Builder;->mSliceType:I

    return p0
.end method


# virtual methods
.method public build()Lcom/android/settings/slices/SliceData;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/settings/slices/SliceData$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/android/settings/slices/SliceData$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/settings/slices/SliceData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/settings/slices/SliceData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/android/settings/slices/SliceData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/slices/SliceData;-><init>(Lcom/android/settings/slices/SliceData$Builder;Lcom/android/settings/slices/SliceData$1;)V

    return-object v0

    .line 255
    :cond_0
    new-instance p0, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;

    const-string v0, "Preference Controller cannot be empty"

    invoke-direct {p0, v0}, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :cond_1
    new-instance p0, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;

    const-string v0, "Fragment Name cannot be empty"

    invoke-direct {p0, v0}, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_2
    new-instance p0, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;

    const-string v0, "Title cannot be empty"

    invoke-direct {p0, v0}, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_3
    new-instance p0, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;

    const-string v0, "Key cannot be empty"

    invoke-direct {p0, v0}, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(I)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 206
    iput p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mIconResource:I

    return-object p0
.end method

.method public setIsPublicSlice(Z)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mIsPublicSlice:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 226
    iput p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mSliceType:I

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUnavailableSliceSubtitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mUnavailableSliceSubtitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/settings/slices/SliceData$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method
