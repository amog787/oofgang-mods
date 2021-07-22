.class Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;
.super Ljava/lang/Object;
.source "BaseDrawer.java"


# instance fields
.field indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

.field paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;Lcom/google/android/material/indicator/draw/data/Indicator;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->paint:Landroid/graphics/Paint;

    .line 16
    iput-object p2, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    return-void
.end method
