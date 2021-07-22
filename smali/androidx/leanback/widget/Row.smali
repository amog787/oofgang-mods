.class public Landroidx/leanback/widget/Row;
.super Ljava/lang/Object;
.source "Row.java"


# instance fields
.field private mHeaderItem:Landroidx/leanback/widget/HeaderItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeaderItem()Landroidx/leanback/widget/HeaderItem;
    .locals 0

    .line 66
    iget-object p0, p0, Landroidx/leanback/widget/Row;->mHeaderItem:Landroidx/leanback/widget/HeaderItem;

    return-object p0
.end method

.method public isRenderedAsRowView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
