.class Lcom/android/settingsstock/applications/ManageApplications$1$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/applications/ManageApplications$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settingsstock/applications/ManageApplications$1;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/applications/ManageApplications$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/applications/ManageApplications$1$1;->this$1:Lcom/android/settingsstock/applications/ManageApplications$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$1$1;->this$1:Lcom/android/settingsstock/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ManageApplications$1;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$1$1;->this$1:Lcom/android/settingsstock/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ManageApplications$1;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications;->mActivityResumed:Z
    invoke-static {v2}, Lcom/android/settingsstock/applications/ManageApplications;->access$1200(Lcom/android/settingsstock/applications/ManageApplications;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$1$1;->this$1:Lcom/android/settingsstock/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ManageApplications$1;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settingsstock/applications/ManageApplications;->access$100(Lcom/android/settingsstock/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$1$1;->this$1:Lcom/android/settingsstock/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ManageApplications$1;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settingsstock/applications/ManageApplications;->access$100(Lcom/android/settingsstock/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v2, v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->pause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$1$1;->this$1:Lcom/android/settingsstock/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ManageApplications$1;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$1$1;->this$1:Lcom/android/settingsstock/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ManageApplications$1;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$1$1;->this$1:Lcom/android/settingsstock/applications/ManageApplications$1;

    iget-object v3, v3, Lcom/android/settingsstock/applications/ManageApplications$1;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I
    invoke-static {v3}, Lcom/android/settingsstock/applications/ManageApplications;->access$1300(Lcom/android/settingsstock/applications/ManageApplications;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->resume(I)V

    :cond_2
    return-void
.end method
