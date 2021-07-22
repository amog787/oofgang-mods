.class public Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilder"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mEndItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEndLoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEndTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHasDefaultToggle:Z

.field private mInputAction:Landroid/app/PendingIntent;

.field private mLayoutDirection:I

.field private mMax:I

.field private mMin:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mThumb:Landroidx/core/graphics/drawable/IconCompat;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mTitleImageMode:I

.field private mTitleItemLoading:Z

.field private mValue:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 789
    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    const/16 v1, 0x64

    .line 790
    iput v1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    .line 791
    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    .line 792
    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    const/4 v0, -0x1

    .line 800
    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mLayoutDirection:I

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndItems:Ljava/util/List;

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndTypes:Ljava/util/List;

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndLoads:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 843
    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    return-object p0
.end method

.method public addEndItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 2

    .line 859
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mHasDefaultToggle:Z

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndTypes:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndLoads:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    invoke-virtual {p1}, Landroidx/slice/builders/SliceAction;->getImpl()Landroidx/slice/core/SliceActionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mHasDefaultToggle:Z

    return-object p0

    .line 860
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only one non-custom toggle can be added in a single row. If you would like to include multiple toggles in a row, set a custom icon for each toggle."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1146
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEndItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1042
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndItems:Ljava/util/List;

    return-object p0
.end method

.method public getEndLoads()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1058
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndLoads:Ljava/util/List;

    return-object p0
.end method

.method public getEndTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1050
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndTypes:Ljava/util/List;

    return-object p0
.end method

.method public getInputAction()Landroid/app/PendingIntent;
    .locals 0

    .line 1122
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 1154
    iget p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mLayoutDirection:I

    return p0
.end method

.method public getMax()I
    .locals 0

    .line 1074
    iget p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    return p0
.end method

.method public getMin()I
    .locals 0

    .line 1066
    iget p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    return p0
.end method

.method public getPrimaryAction()Landroidx/slice/builders/SliceAction;
    .locals 0

    .line 1138
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1106
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getThumb()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 1130
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mThumb:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1098
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 1028
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getTitleImageMode()I
    .locals 0

    .line 1020
    iget p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitleImageMode:I

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 1082
    iget p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    return p0
.end method

.method public isTitleItemLoading()Z
    .locals 0

    .line 1012
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitleItemLoading:Z

    return p0
.end method

.method public isValueSet()Z
    .locals 0

    .line 1090
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    return p0
.end method

.method public setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0

    .line 950
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0

    .line 910
    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    return-object p0
.end method

.method public setMin(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0

    .line 901
    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0

    .line 983
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0

    .line 941
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0

    .line 932
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 833
    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    return-object p0
.end method

.method public setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0

    .line 890
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 891
    iput p2, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitleImageMode:I

    .line 892
    iput-boolean p3, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitleItemLoading:Z

    return-object p0
.end method

.method public setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 922
    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    .line 923
    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    return-object p0
.end method
