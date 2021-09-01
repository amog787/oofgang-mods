.class public Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
.super Ljava/lang/Object;
.source "ContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppVersion:J

.field private mCardType:I

.field private mCategory:I

.field private mHasInlineAction:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsLargeCard:Z

.field private mIsPendingDismiss:Z

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mRankingScore:D

.field private mSlice:Landroidx/slice/Slice;

.field private mSliceUri:Ljava/lang/String;

.field private mSummaryText:Ljava/lang/String;

.field private mTitleText:Ljava/lang/String;

.field private mViewType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I
    .locals 0

    .line 221
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mCardType:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIsLargeCard:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I
    .locals 0

    .line 221
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIsPendingDismiss:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mHasInlineAction:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Landroidx/slice/Slice;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSlice:Landroidx/slice/Slice;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)D
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mRankingScore:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSliceUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I
    .locals 0

    .line 221
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mCategory:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mAppVersion:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSummaryText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 1

    .line 318
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    return-object v0
.end method

.method public setAppVersion(J)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 270
    iput-wide p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mAppVersion:J

    return-object p0
.end method

.method public setCardType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 245
    iput p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mCardType:I

    return-object p0
.end method

.method public setCategory(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 260
    iput p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mCategory:I

    return-object p0
.end method

.method public setHasInlineAction(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mHasInlineAction:Z

    return-object p0
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIsLargeCard(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIsLargeCard:Z

    return-object p0
.end method

.method public setIsPendingDismiss(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIsPendingDismiss:Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setRankingScore(D)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 250
    iput-wide p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mRankingScore:D

    return-object p0
.end method

.method public setSlice(Landroidx/slice/Slice;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSlice:Landroidx/slice/Slice;

    return-object p0
.end method

.method public setSliceUri(Landroid/net/Uri;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 255
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSliceUri:Ljava/lang/String;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSummaryText:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method public setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 295
    iput p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    return-object p0
.end method
