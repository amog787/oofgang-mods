.class public Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBuilderImpl"
.end annotation


# instance fields
.field private mContentDescr:Ljava/lang/CharSequence;

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mSummaryItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method constructor <init>(Landroidx/slice/builders/impl/ListBuilderImpl;)V
    .locals 1

    .line 683
    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method

.method private setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 775
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    return-void
.end method

.method private setLayoutDirection(I)V
    .locals 2

    .line 779
    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "layout_direction"

    invoke-virtual {p0, p1, v1, v0}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method private setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    .line 769
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-void
.end method

.method private setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 4

    .line 750
    new-instance v0, Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "text"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_0

    const-string p0, "partial"

    .line 752
    invoke-virtual {v0, p0}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;Z)V
    .locals 4

    .line 759
    new-instance v0, Landroidx/slice/SliceItem;

    const-string v1, "summary"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mSummaryItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_0

    const-string p0, "partial"

    .line 762
    invoke-virtual {v0, p0}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setTitle(Ljava/lang/CharSequence;Z)V
    .locals 4

    .line 741
    new-instance v0, Landroidx/slice/SliceItem;

    const-string v1, "title"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_0

    const-string p0, "partial"

    .line 743
    invoke-virtual {v0, p0}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3

    .line 718
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 721
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 724
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mSummaryItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 727
    :cond_2
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "content_description"

    .line 728
    invoke-virtual {p1, v0, v2, v1}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 730
    :cond_3
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_4

    .line 731
    invoke-virtual {v0, p1}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    .line 733
    :cond_4
    iget-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_6

    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_5

    goto :goto_0

    .line 734
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Header requires a title or subtitle to be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    return-void
.end method

.method fillFrom(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .locals 2

    .line 693
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->setBuilder(Landroidx/slice/Slice$Builder;)V

    .line 696
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    .line 697
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getLayoutDirection()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 698
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getLayoutDirection()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->setLayoutDirection(I)V

    .line 700
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->isTitleLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->isTitleLoading()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 703
    :cond_3
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->isSubtitleLoading()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 704
    :cond_4
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->isSubtitleLoading()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->setSubtitle(Ljava/lang/CharSequence;Z)V

    .line 706
    :cond_5
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->isSummaryLoading()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 707
    :cond_6
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->isSummaryLoading()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->setSummary(Ljava/lang/CharSequence;Z)V

    .line 709
    :cond_7
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 710
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method
