.class public final synthetic Lcom/android/settingslib/graph/-$$Lambda$ExJ0HHRzS2_LMtcBJqtFiovbn0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/-$$Lambda$ExJ0HHRzS2_LMtcBJqtFiovbn0w;->f$0:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/graph/-$$Lambda$ExJ0HHRzS2_LMtcBJqtFiovbn0w;->f$0:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
