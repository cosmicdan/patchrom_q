.class public Lcom/android/settingsstock/users/UserSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DIALOG_ADD_USER:I = 0x2

.field private static final DIALOG_CONFIRM_REMOVE:I = 0x1

.field private static final DIALOG_SETUP_USER:I = 0x3

.field private static final DIALOG_USER_CANNOT_MANAGE:I = 0x4

.field private static final KEY_ADD_USER_LONG_MESSAGE_DISPLAYED:Ljava/lang/String; = "key_add_user_long_message_displayed"

.field private static final KEY_USER_LIST:Ljava/lang/String; = "user_list"

.field private static final KEY_USER_ME:Ljava/lang/String; = "user_me"

.field private static final KEY_USER_NICKNAME:Ljava/lang/String; = "user_nickname"

.field private static final MENU_ADD_USER:I = 0x1

.field private static final MENU_REMOVE_USER:I = 0x2

.field private static final MESSAGE_SETUP_USER:I = 0x2

.field private static final MESSAGE_UPDATE_LIST:I = 0x1

.field private static final SAVE_ADDING_USER:Ljava/lang/String; = "adding_user"

.field private static final SAVE_REMOVING_USER:Ljava/lang/String; = "removing_user"

.field private static final TAG:Ljava/lang/String; = "UserSettings"

.field private static final USER_DRAWABLES:[I


# instance fields
.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsOwner:Z

.field private mMePreference:Landroid/preference/Preference;

.field private mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

.field private mProfileExists:Z

.field private mRemovingUserId:I

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingsstock/users/UserSettings;->USER_DRAWABLES:[I

    return-void

    :array_0
    .array-data 0x4
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    iput v0, p0, Lcom/android/settingsstock/users/UserSettings;->mAddedUserId:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settingsstock/users/UserSettings;->mIsOwner:Z

    new-instance v0, Lcom/android/settingsstock/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/users/UserSettings$1;-><init>(Lcom/android/settingsstock/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/users/UserSettings$2;-><init>(Lcom/android/settingsstock/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settingsstock/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->addUserNow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settingsstock/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settingsstock/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settingsstock/users/UserSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settingsstock/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/settingsstock/users/UserSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settingsstock/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settingsstock/users/UserSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settingsstock/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/users/UserSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/users/UserSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settingsstock/users/UserSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settingsstock/users/UserSettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->getProfileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settingsstock/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method private addUserNow()V
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settingsstock/users/UserSettings;->mAddingUser:Z

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->updateUserList()V

    new-instance v0, Lcom/android/settingsstock/users/UserSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/users/UserSettings$8;-><init>(Lcom/android/settingsstock/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settingsstock/users/UserSettings$8;->start()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/users/UserSettings;->USER_DRAWABLES:[I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object v4, Lcom/android/settingsstock/users/UserSettings;->USER_DRAWABLES:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingsstock/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    :cond_0
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/android/settingsstock/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/settingsstock/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settingsstock/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settingsstock/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/settingsstock/users/UserSettings;->mProfileExists:Z

    :cond_0
    return-object v0
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1

    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/settingsstock/users/UserSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/users/UserSettings$9;-><init>(Lcom/android/settingsstock/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/users/UserSettings$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadProfile()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingsstock/users/UserSettings;->mProfileExists:Z

    new-instance v0, Lcom/android/settingsstock/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/users/UserSettings$3;-><init>(Lcom/android/settingsstock/users/UserSettings;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onAddUserClicked()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settingsstock/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->showDialog(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settingsstock/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->showDialog(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1

    iput p1, p0, Lcom/android/settingsstock/users/UserSettings;->mAddedUserId:I

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->showDialog(I)V

    return-void
.end method

.method private removeThisUser()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    iget v0, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->removeThisUser()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settingsstock/users/UserSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/users/UserSettings$7;-><init>(Lcom/android/settingsstock/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settingsstock/users/UserSettings$7;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingsstock/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private switchUserNow(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUserList()V
    .locals 13

    const v12, 0x7f020017

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

    iget-object v3, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settingsstock/SelectableEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

    iget-object v3, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settingsstock/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    iget-object v1, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/settingsstock/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_6

    move v4, v10

    :goto_3
    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settingsstock/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_5

    const v1, 0x7f0b0917

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_5
    iget-object v1, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v8}, Lcom/android/settingsstock/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0b0916

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_6
    move v4, v11

    goto :goto_3

    :cond_7
    invoke-direct {p0, v0, v8}, Lcom/android/settingsstock/users/UserSettings;->setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_1

    :cond_8
    iget-boolean v1, p0, Lcom/android/settingsstock/users/UserSettings;->mAddingUser:Z

    if-eqz v1, :cond_9

    new-instance v0, Lcom/android/settingsstock/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xa

    move v4, v11

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settingsstock/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    const v1, 0x7f0b0922

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const v1, 0x7f0b0927

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setIcon(I)V

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v7}, Lcom/android/settingsstock/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settingsstock/users/UserPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/settingsstock/users/UserPreference;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->onRemoveUserClicked(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/users/UserSettings;->mAddedUserId:I

    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const v0, 0x7f050044

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->addPreferencesFromResource(I)V

    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    const-string v0, "user_me"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-boolean v0, p0, Lcom/android/settingsstock/users/UserSettings;->mIsOwner:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "user_owner_info"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-boolean v0, p0, Lcom/android/settingsstock/users/UserSettings;->mIsOwner:Z

    if-nez v0, :cond_3

    const v0, 0x7f0b037b

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setTitle(I)V

    :cond_3
    const-string v0, "user_nickname"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/SelectableEditTextPreference;

    iput-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/SelectableEditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/SelectableEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings;->mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SelectableEditTextPreference;->setInitialSelectionMode(I)V

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->loadProfile()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->setHasOptionsMenu(Z)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/settingsstock/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v6, 0x104000a

    const/high16 v7, 0x104

    const/4 v5, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget v6, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    if-ne v4, v6, :cond_0

    const v4, 0x7f0b0923

    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget v6, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    if-ne v4, v6, :cond_1

    const v4, 0x7f0b0925

    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0929

    new-instance v6, Lcom/android/settingsstock/users/UserSettings$4;

    invoke-direct {v6, p0}, Lcom/android/settingsstock/users/UserSettings$4;-><init>(Lcom/android/settingsstock/users/UserSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v4, 0x7f0b0924

    goto :goto_1

    :cond_1
    const v4, 0x7f0b0926

    goto :goto_2

    :pswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0920

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "key_add_user_long_message_displayed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const v2, 0x7f0b091b

    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0919

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settingsstock/users/UserSettings$5;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/settingsstock/users/UserSettings$5;-><init>(Lcom/android/settingsstock/users/UserSettings;ZLandroid/content/SharedPreferences;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const v2, 0x7f0b091a

    goto :goto_3

    :pswitch_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b091c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b091d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b091e

    new-instance v6, Lcom/android/settingsstock/users/UserSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settingsstock/users/UserSettings$6;-><init>(Lcom/android/settingsstock/users/UserSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b091f

    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/android/settingsstock/users/UserSettings;->mIsOwner:Z

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v3

    iget-object v4, p0, Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_0

    const v3, 0x7f0b0913

    invoke-interface {p1, v7, v6, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0921

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDialogShowing()V

    invoke-virtual {p0, p0}, Lcom/android/settingsstock/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settingsstock/users/UserSettings;->mAddingUser:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->updateUserList()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->onAddUserClicked()V

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settingsstock/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/users/UserSettings;->mNicknamePreference:Lcom/android/settingsstock/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->setUserName(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settingsstock/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settingsstock/users/UserSettings;->mProfileExists:Z

    if-nez v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "newLocalProfile"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string v3, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    const/4 v3, 0x0

    return v3

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/android/settingsstock/users/UserPreference;

    if-eqz v3, :cond_0

    check-cast p1, Lcom/android/settingsstock/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settingsstock/users/UserPreference;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/users/UserSettings;->showDialog(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settingsstock/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settingsstock/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    iget v7, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->loadProfile()V

    invoke-direct {p0}, Lcom/android/settingsstock/users/UserSettings;->updateUserList()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/settingsstock/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settingsstock/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
