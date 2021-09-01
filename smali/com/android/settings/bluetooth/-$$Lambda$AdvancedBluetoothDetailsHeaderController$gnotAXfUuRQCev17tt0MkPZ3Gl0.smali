.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$gnotAXfUuRQCev17tt0MkPZ3Gl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/graphics/Bitmap;

.field public final synthetic f$3:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$gnotAXfUuRQCev17tt0MkPZ3Gl0;->f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$gnotAXfUuRQCev17tt0MkPZ3Gl0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$gnotAXfUuRQCev17tt0MkPZ3Gl0;->f$2:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$gnotAXfUuRQCev17tt0MkPZ3Gl0;->f$3:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$gnotAXfUuRQCev17tt0MkPZ3Gl0;->f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$gnotAXfUuRQCev17tt0MkPZ3Gl0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$gnotAXfUuRQCev17tt0MkPZ3Gl0;->f$2:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/settings/bluetooth/-$$Lambda$AdvancedBluetoothDetailsHeaderController$gnotAXfUuRQCev17tt0MkPZ3Gl0;->f$3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateIcon$0$AdvancedBluetoothDetailsHeaderController(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method
