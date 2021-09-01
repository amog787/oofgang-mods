.class Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/google/android/material/picker/RadialTimePickerView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/picker/RadialTimePickerView;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    .line 1142
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1127
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private adjustPicker(I)V
    .locals 4

    .line 1178
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$000(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 1182
    iget-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v3}, Lcom/google/android/material/picker/RadialTimePickerView;->access$100(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto :goto_0

    .line 1187
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v0

    const/16 v3, 0xc

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    .line 1193
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    div-int/2addr v0, v1

    const/16 v3, 0x37

    :goto_0
    add-int/2addr v0, p1

    mul-int/2addr v0, v1

    .line 1199
    invoke-static {v0, v2, v3}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result p1

    .line 1200
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$000(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentHour(I)V

    goto :goto_1

    .line 1203
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentMinute(I)V

    :goto_1
    return-void
.end method

.method private getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 7

    .line 1376
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1377
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->access$800(Lcom/google/android/material/picker/RadialTimePickerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$900(Lcom/google/android/material/picker/RadialTimePickerView;)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v2}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1000(Lcom/google/android/material/picker/RadialTimePickerView;)[I

    move-result-object v2

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1384
    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v1}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1100(Lcom/google/android/material/picker/RadialTimePickerView;)I

    move-result v1

    goto :goto_0

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$900(Lcom/google/android/material/picker/RadialTimePickerView;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v1}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1000(Lcom/google/android/material/picker/RadialTimePickerView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1387
    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v1}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1100(Lcom/google/android/material/picker/RadialTimePickerView;)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    move v3, v1

    .line 1390
    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v1, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1200(Lcom/google/android/material/picker/RadialTimePickerView;I)I

    move-result p1

    int-to-float p1, p1

    move v6, v3

    move v3, p1

    move p1, v6

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 1392
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$900(Lcom/google/android/material/picker/RadialTimePickerView;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v1}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1000(Lcom/google/android/material/picker/RadialTimePickerView;)[I

    move-result-object v1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 1393
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1300(Lcom/google/android/material/picker/RadialTimePickerView;I)I

    move-result p1

    int-to-float p1, p1

    .line 1394
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1100(Lcom/google/android/material/picker/RadialTimePickerView;)I

    move-result v0

    int-to-float v0, v0

    move v6, v3

    move v3, p1

    move p1, v0

    move v0, v6

    goto :goto_1

    :cond_2
    move p1, v3

    move v0, p1

    :goto_1
    float-to-double v1, v3

    .line 1402
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 1403
    iget-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v3}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1400(Lcom/google/android/material/picker/RadialTimePickerView;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    .line 1404
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$1500(Lcom/google/android/material/picker/RadialTimePickerView;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float/2addr p0, v0

    sub-float v0, v3, p1

    float-to-int v0, v0

    sub-float v1, p0, p1

    float-to-int v1, v1

    add-float/2addr v3, p1

    float-to-int v2, v3

    add-float/2addr p0, p1

    float-to-int p0, p0

    .line 1406
    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getCircularDiff(III)I
    .locals 0

    sub-int/2addr p1, p2

    .line 1273
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 1274
    div-int/lit8 p1, p3, 0x2

    if-le p0, p1, :cond_0

    sub-int p0, p3, p0

    :cond_0
    return p0
.end method

.method private getTypeFromId(I)I
    .locals 0

    ushr-int/lit8 p0, p1, 0x0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private getValueFromId(I)I
    .locals 0

    ushr-int/lit8 p0, p1, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    .line 1413
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getVirtualViewIdAfter(II)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    add-int/2addr p2, v0

    .line 1316
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$100(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    if-gt p2, v0, :cond_3

    .line 1318
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1321
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1322
    rem-int/lit8 v1, p2, 0x5

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, 0x5

    if-ge p2, v0, :cond_2

    if-le v1, v0, :cond_2

    .line 1326
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    return p0

    :cond_2
    const/16 p2, 0x3c

    if-ge v1, p2, :cond_3

    .line 1328
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    return p0

    :cond_3
    const/high16 p0, -0x80000000

    return p0
.end method

.method private hour12To24(II)I
    .locals 0

    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1

    add-int/lit8 p1, p1, 0xc

    :cond_1
    :goto_0
    return p1
.end method

.method private hour24To12(I)I
    .locals 0

    const/16 p0, 0xc

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-le p1, p0, :cond_1

    sub-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method private isVirtualViewSelected(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1423
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentHour()I

    move-result p0

    if-ne p0, p2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 1425
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result p0

    if-ne p0, p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private makeId(II)I
    .locals 0

    shl-int/lit8 p0, p1, 0x0

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4

    .line 1210
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->access$200(Lcom/google/android/material/picker/RadialTimePickerView;FFZ)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x0

    .line 1212
    invoke-static {v0, v2}, Lcom/google/android/material/picker/RadialTimePickerView;->access$300(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    .line 1213
    iget-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v3}, Lcom/google/android/material/picker/RadialTimePickerView;->access$000(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->access$400(Lcom/google/android/material/picker/RadialTimePickerView;FF)Z

    move-result p1

    .line 1215
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {p2, v2, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->access$500(Lcom/google/android/material/picker/RadialTimePickerView;IZ)I

    move-result p1

    .line 1216
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/RadialTimePickerView;->access$100(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result p1

    .line 1217
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    goto :goto_2

    .line 1219
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p1}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result p1

    .line 1220
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {p2, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$600(Lcom/google/android/material/picker/RadialTimePickerView;I)I

    move-result p2

    .line 1221
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0, v2}, Lcom/google/android/material/picker/RadialTimePickerView;->access$600(Lcom/google/android/material/picker/RadialTimePickerView;I)I

    move-result v0

    const/16 v1, 0x3c

    .line 1225
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v2

    .line 1226
    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result p2

    if-ge v2, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    const/4 p2, 0x2

    .line 1233
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    goto :goto_2

    :cond_3
    const/high16 p0, -0x80000000

    :goto_2
    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$000(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->access$100(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1246
    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {v2}, Lcom/google/android/material/picker/RadialTimePickerView;->access$100(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    if-gt v0, v2, :cond_3

    .line 1248
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_3

    const/4 v2, 0x2

    .line 1253
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-le v0, v1, :cond_2

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_2

    .line 1258
    invoke-direct {p0, v2, v0}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x5

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1147
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1150
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/16 p0, 0x1000

    .line 1151
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 p0, 0x2000

    .line 1152
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/16 p3, 0x10

    if-ne p2, p3, :cond_2

    .line 1338
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result p2

    .line 1339
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result p1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 1341
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/RadialTimePickerView;->access$100(Lcom/google/android/material/picker/RadialTimePickerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/RadialTimePickerView;->access$700(Lcom/google/android/material/picker/RadialTimePickerView;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result p1

    .line 1342
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentHour(I)V

    return p3

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1345
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentMinute(I)V

    return p3

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1280
    const-class v0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1282
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1283
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result p1

    .line 1284
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1285
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 1290
    const-class v0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    .line 1291
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1293
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1294
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1295
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1296
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1298
    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    .line 1299
    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1301
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result p1

    .line 1302
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 1304
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 1306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 1307
    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p2, p0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1157
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p1, -0x1

    .line 1166
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return p3

    .line 1163
    :cond_2
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return p3
.end method
