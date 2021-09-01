.class public Landroidx/slice/widget/RowContent;
.super Landroidx/slice/widget/SliceContent;
.source "RowContent.java"


# instance fields
.field private mEndItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHeader:Z

.field private mLineCount:I

.field private mPrimaryAction:Landroidx/slice/SliceItem;

.field private mRange:Landroidx/slice/SliceItem;

.field private mSelection:Landroidx/slice/SliceItem;

.field private mShowActionDivider:Z

.field private mShowBottomDivider:Z

.field private mShowTitleItems:Z

.field private mStartItem:Landroidx/slice/SliceItem;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mSummaryItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;

.field private mToggleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 83
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/RowContent;->populate(Landroidx/slice/SliceItem;Z)Z

    return-void
.end method

.method private determineStartAndPrimaryAction(Landroidx/slice/SliceItem;)V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "title"

    .line 205
    invoke-static {p1, v0, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 206
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "slice"

    const-string v5, "action"

    const/4 v6, 0x0

    if-lez v3, :cond_2

    .line 208
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "image"

    if-eqz v7, :cond_0

    .line 210
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    invoke-static {v7, v8}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    if-nez v7, :cond_1

    .line 211
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "long"

    .line 212
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 213
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    iput-object v2, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    :cond_2
    const-string v2, "shortcut"

    .line 219
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {p1, v4, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 221
    invoke-static {p1, v5, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 225
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    goto :goto_0

    .line 226
    :cond_3
    iget-object p1, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 227
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-ne p1, v0, :cond_4

    .line 229
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    goto :goto_0

    .line 230
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 231
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    :cond_5
    :goto_0
    return-void
.end method

.method private static filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 447
    invoke-static {p0, v2}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static hasText(Landroidx/slice/SliceItem;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "partial"

    .line 411
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidRow(Landroidx/slice/SliceItem;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    const-string v2, "see_more"

    .line 427
    invoke-virtual {p0, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    move v2, v0

    .line 431
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 432
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-static {p0, v4}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z
    .locals 4

    const-string v0, "keywords"

    const-string v1, "ttl"

    const-string v2, "last_updated"

    const-string v3, "horizontal"

    .line 461
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 462
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content_description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "selection_option_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 464
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "selection_option_value"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v0, "image"

    .line 470
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text"

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "long"

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "action"

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "input"

    .line 474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "slice"

    .line 475
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "int"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "range"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private populate(Landroidx/slice/SliceItem;Z)Z
    .locals 8

    .line 90
    iput-boolean p2, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 91
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p0, "RowContent"

    const-string p1, "Provided SliceItem is invalid for RowContent"

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowContent;->determineStartAndPrimaryAction(Landroidx/slice/SliceItem;)V

    .line 98
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object p2

    .line 101
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "title"

    const-string v3, "action"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v5, "slice"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    const-string v5, "shortcut"

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-static {v1}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    .line 107
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object p2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v0

    .line 110
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "range"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 112
    invoke-static {p1, v3, v6}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_3

    goto :goto_1

    .line 117
    :cond_3
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 120
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-static {v1}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    .line 122
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object p2

    .line 123
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 125
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 128
    :cond_4
    invoke-static {p1, v3, v6}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 130
    invoke-static {v1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v5, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 114
    :cond_5
    :goto_1
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 137
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "selection"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    .line 140
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_16

    .line 142
    iget-object p1, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_8

    .line 143
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    :cond_8
    iget-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_9

    .line 146
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 151
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 152
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 153
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 154
    iget-object v6, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    const-string v7, "summary"

    if-eqz v6, :cond_a

    invoke-virtual {v6, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 155
    :cond_a
    invoke-virtual {v5, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5, v7}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 156
    iput-object v5, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    goto :goto_4

    .line 157
    :cond_b
    iget-object v6, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-nez v6, :cond_c

    invoke-virtual {v5, v7}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 158
    iput-object v5, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    goto :goto_4

    .line 159
    :cond_c
    iget-object v6, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    if-nez v6, :cond_e

    invoke-virtual {v5, v7}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 160
    iput-object v5, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    goto :goto_4

    .line 163
    :cond_d
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 166
    :cond_f
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    invoke-static {p2}, Landroidx/slice/widget/RowContent;->hasText(Landroidx/slice/SliceItem;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 167
    iget p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    add-int/2addr p2, v4

    iput p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 169
    :cond_10
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    invoke-static {p2}, Landroidx/slice/widget/RowContent;->hasText(Landroidx/slice/SliceItem;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 170
    iget p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    add-int/2addr p2, v4

    iput p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 173
    :cond_11
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    const-string v1, "long"

    if-eqz p2, :cond_12

    .line 174
    invoke-virtual {p2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    move p2, v4

    goto :goto_5

    :cond_12
    move p2, v0

    :goto_5
    move v2, v0

    .line 175
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_16

    .line 176
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 177
    invoke-static {v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    if-eqz v6, :cond_13

    move v6, v4

    goto :goto_7

    :cond_13
    move v6, v0

    .line 178
    :goto_7
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    if-nez p2, :cond_15

    .line 181
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v4

    goto :goto_8

    .line 184
    :cond_14
    invoke-direct {p0, v5, v6}, Landroidx/slice/widget/RowContent;->processContent(Landroidx/slice/SliceItem;Z)V

    :cond_15
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 188
    :cond_16
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result p0

    return p0
.end method

.method private processContent(Landroidx/slice/SliceItem;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 193
    new-instance p2, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {p2, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 194
    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getEndItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 0

    .line 352
    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getRowHeight(Landroidx/slice/widget/RowContent;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0
.end method

.method public getInputRangeThumb()Landroidx/slice/SliceItem;
    .locals 3

    .line 281
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_1

    .line 282
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 283
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 284
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/SliceItem;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsHeader()Z
    .locals 0

    .line 251
    iget-boolean p0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    return p0
.end method

.method public getLineCount()I
    .locals 0

    .line 347
    iget p0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    return p0
.end method

.method public getPrimaryAction()Landroidx/slice/SliceItem;
    .locals 0

    .line 297
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getRange()Landroidx/slice/SliceItem;
    .locals 0

    .line 265
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getSelection()Landroidx/slice/SliceItem;
    .locals 0

    .line 273
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getStartItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 305
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    :goto_0
    return-object p0
.end method

.method public getSubtitleItem()Landroidx/slice/SliceItem;
    .locals 0

    .line 321
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getSummaryItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 326
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    :cond_0
    return-object v0
.end method

.method public getTitleItem()Landroidx/slice/SliceItem;
    .locals 0

    .line 313
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getToggleItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hasActionDivider()Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Landroidx/slice/widget/RowContent;->mShowActionDivider:Z

    return p0
.end method

.method public hasBottomDivider()Z
    .locals 0

    .line 389
    iget-boolean p0, p0, Landroidx/slice/widget/RowContent;->mShowBottomDivider:Z

    return p0
.end method

.method public hasTitleItems()Z
    .locals 0

    .line 375
    iget-boolean p0, p0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    return p0
.end method

.method public isDefaultSeeMore()Z
    .locals 2

    .line 359
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 360
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v1, "see_more"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 361
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 1

    .line 237
    invoke-super {p0}, Landroidx/slice/widget/SliceContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIsHeader(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    return-void
.end method

.method public showActionDivider(Z)V
    .locals 0

    .line 396
    iput-boolean p1, p0, Landroidx/slice/widget/RowContent;->mShowActionDivider:Z

    return-void
.end method

.method public showBottomDivider(Z)V
    .locals 0

    .line 382
    iput-boolean p1, p0, Landroidx/slice/widget/RowContent;->mShowBottomDivider:Z

    return-void
.end method

.method public showTitleItems(Z)V
    .locals 0

    .line 368
    iput-boolean p1, p0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    return-void
.end method
