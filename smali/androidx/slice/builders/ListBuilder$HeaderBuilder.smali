.class public Landroidx/slice/builders/ListBuilder$HeaderBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBuilder"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mLayoutDirection:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleLoading:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryLoading:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLoading:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1729
    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1930
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 1938
    iget p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mLayoutDirection:I

    return p0
.end method

.method public getPrimaryAction()Landroidx/slice/builders/SliceAction;
    .locals 0

    .line 1921
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1887
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 1904
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1870
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 1861
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isSubtitleLoading()Z
    .locals 0

    .line 1895
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitleLoading:Z

    return p0
.end method

.method public isSummaryLoading()Z
    .locals 0

    .line 1912
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSummaryLoading:Z

    return p0
.end method

.method public isTitleLoading()Z
    .locals 0

    .line 1878
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    return p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 0

    .line 1832
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 1771
    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 0

    .line 1785
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 1786
    iput-boolean p2, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitleLoading:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 1746
    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 0

    .line 1761
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 1762
    iput-boolean p2, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    return-object p0
.end method
