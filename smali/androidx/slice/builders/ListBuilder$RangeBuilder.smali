.class public Landroidx/slice/builders/ListBuilder$RangeBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeBuilder"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mLayoutDirection:I

.field private mMax:I

.field private mMode:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mTitleImageMode:I

.field private mTitleItemLoading:Z

.field private mValue:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 530
    iput v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mMax:I

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mValueSet:Z

    const/4 v1, -0x1

    .line 536
    iput v1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mLayoutDirection:I

    .line 537
    iput v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mMode:I

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 760
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 768
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mLayoutDirection:I

    return p0
.end method

.method public getMax()I
    .locals 0

    .line 720
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mMax:I

    return p0
.end method

.method public getMode()I
    .locals 0

    .line 776
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mMode:I

    return p0
.end method

.method public getPrimaryAction()Landroidx/slice/builders/SliceAction;
    .locals 0

    .line 752
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 744
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 736
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 704
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getTitleImageMode()I
    .locals 0

    .line 696
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitleImageMode:I

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 712
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mValue:I

    return p0
.end method

.method public isTitleItemLoading()Z
    .locals 0

    .line 688
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitleItemLoading:Z

    return p0
.end method

.method public isValueSet()Z
    .locals 0

    .line 728
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mValueSet:Z

    return p0
.end method

.method public setMode(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0

    .line 679
    iput p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mMode:I

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0

    .line 645
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0

    .line 623
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 568
    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RangeBuilder;

    return-object p0
.end method

.method public setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0

    .line 591
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 592
    iput p2, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitleImageMode:I

    .line 593
    iput-boolean p3, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitleItemLoading:Z

    return-object p0
.end method
