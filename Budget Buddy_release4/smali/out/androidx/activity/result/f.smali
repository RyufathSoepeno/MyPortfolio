.class public final Landroidx/activity/result/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/f$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/activity/result/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Landroid/content/IntentSender;

.field private final f:Landroid/content/Intent;

.field private final g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/activity/result/f$a;

    invoke-direct {v0}, Landroidx/activity/result/f$a;-><init>()V

    sput-object v0, Landroidx/activity/result/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/f;->e:Landroid/content/IntentSender;

    iput-object p2, p0, Landroidx/activity/result/f;->f:Landroid/content/Intent;

    iput p3, p0, Landroidx/activity/result/f;->g:I

    iput p4, p0, Landroidx/activity/result/f;->h:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/content/IntentSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iput-object v0, p0, Landroidx/activity/result/f;->e:Landroid/content/IntentSender;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroidx/activity/result/f;->f:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/activity/result/f;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/activity/result/f;->h:I

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroidx/activity/result/f;->f:Landroid/content/Intent;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Landroidx/activity/result/f;->g:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Landroidx/activity/result/f;->h:I

    return v0
.end method

.method public d()Landroid/content/IntentSender;
    .registers 2

    iget-object v0, p0, Landroidx/activity/result/f;->e:Landroid/content/IntentSender;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroidx/activity/result/f;->e:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroidx/activity/result/f;->f:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroidx/activity/result/f;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/activity/result/f;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
