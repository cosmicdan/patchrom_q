.class Lcom/android/settingsstock/deviceinfo/Memory$2;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/deviceinfo/Memory;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/deviceinfo/Memory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/Memory$2;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory$2;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/deviceinfo/Memory;->handleUpdateAppInstallLocation(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method
