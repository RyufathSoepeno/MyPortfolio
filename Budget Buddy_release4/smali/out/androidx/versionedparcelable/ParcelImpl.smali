.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:La0/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/versionedparcelable/ParcelImpl$a;

    invoke-direct {v0}, Landroidx/versionedparcelable/ParcelImpl$a;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/versionedparcelable/b;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/b;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroidx/versionedparcelable/a;->u()La0/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->e:La0/a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    new-instance p2, Landroidx/versionedparcelable/b;

    invoke-direct {p2, p1}, Landroidx/versionedparcelable/b;-><init>(Landroid/os/Parcel;)V

    iget-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->e:La0/a;

    invoke-virtual {p2, p1}, Landroidx/versionedparcelable/a;->L(La0/a;)V

    return-void
.end method
