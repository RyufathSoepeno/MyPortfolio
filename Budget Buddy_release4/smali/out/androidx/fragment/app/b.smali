.class final Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final e:[I

.field final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final g:[I

.field final h:[I

.field final i:I

.field final j:Ljava/lang/String;

.field final k:I

.field final l:I

.field final m:Ljava/lang/CharSequence;

.field final n:I

.field final o:Ljava/lang/CharSequence;

.field final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/fragment/app/b$a;

    invoke-direct {v0}, Landroidx/fragment/app/b$a;-><init>()V

    sput-object v0, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->e:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->g:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->h:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->l:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->n:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->o:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_61

    const/4 p1, 0x1

    goto :goto_62

    :cond_61
    const/4 p1, 0x0

    :goto_62
    iput-boolean p1, p0, Landroidx/fragment/app/b;->r:Z

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/a;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/fragment/app/g0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->e:[I

    iget-boolean v1, p1, Landroidx/fragment/app/g0;->i:Z

    if-eqz v1, :cond_a4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/b;->f:Ljava/util/ArrayList;

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->g:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->h:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_24
    if-ge v1, v0, :cond_7b

    iget-object v3, p1, Landroidx/fragment/app/g0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g0$a;

    iget-object v4, p0, Landroidx/fragment/app/b;->e:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroidx/fragment/app/g0$a;->a:I

    aput v6, v4, v2

    iget-object v2, p0, Landroidx/fragment/app/b;->f:Ljava/util/ArrayList;

    iget-object v4, v3, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_3f

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/fragment/app/b;->e:[I

    add-int/lit8 v4, v5, 0x1

    iget-boolean v6, v3, Landroidx/fragment/app/g0$a;->c:Z

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroidx/fragment/app/g0$a;->d:I

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroidx/fragment/app/g0$a;->e:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroidx/fragment/app/g0$a;->f:I

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroidx/fragment/app/g0$a;->g:I

    aput v6, v2, v5

    iget-object v2, p0, Landroidx/fragment/app/b;->g:[I

    iget-object v5, v3, Landroidx/fragment/app/g0$a;->h:Landroidx/lifecycle/f$c;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v5, v2, v1

    iget-object v2, p0, Landroidx/fragment/app/b;->h:[I

    iget-object v3, v3, Landroidx/fragment/app/g0$a;->i:Landroidx/lifecycle/f$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_24

    :cond_7b
    iget v0, p1, Landroidx/fragment/app/g0;->h:I

    iput v0, p0, Landroidx/fragment/app/b;->i:I

    iget-object v0, p1, Landroidx/fragment/app/g0;->k:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/String;

    iget v0, p1, Landroidx/fragment/app/a;->v:I

    iput v0, p0, Landroidx/fragment/app/b;->k:I

    iget v0, p1, Landroidx/fragment/app/g0;->l:I

    iput v0, p0, Landroidx/fragment/app/b;->l:I

    iget-object v0, p1, Landroidx/fragment/app/g0;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/lang/CharSequence;

    iget v0, p1, Landroidx/fragment/app/g0;->n:I

    iput v0, p0, Landroidx/fragment/app/b;->n:I

    iget-object v0, p1, Landroidx/fragment/app/g0;->o:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->o:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/fragment/app/g0;->p:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->p:Ljava/util/ArrayList;

    iget-object v0, p1, Landroidx/fragment/app/g0;->q:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->q:Ljava/util/ArrayList;

    iget-boolean p1, p1, Landroidx/fragment/app/g0;->r:Z

    iput-boolean p1, p0, Landroidx/fragment/app/b;->r:Z

    return-void

    :cond_a4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroidx/fragment/app/a;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Landroidx/fragment/app/b;->e:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_93

    new-instance v3, Landroidx/fragment/app/g0$a;

    invoke-direct {v3}, Landroidx/fragment/app/g0$a;-><init>()V

    iget-object v5, p0, Landroidx/fragment/app/b;->e:[I

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    iput v1, v3, Landroidx/fragment/app/g0$a;->a:I

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instantiate "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " op #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " base fragment #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/fragment/app/b;->e:[I

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "FragmentManager"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    invoke-static {}, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;

    move-result-object v1

    iget-object v5, p0, Landroidx/fragment/app/b;->g:[I

    aget v5, v5, v2

    aget-object v1, v1, v5

    iput-object v1, v3, Landroidx/fragment/app/g0$a;->h:Landroidx/lifecycle/f$c;

    invoke-static {}, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;

    move-result-object v1

    iget-object v5, p0, Landroidx/fragment/app/b;->h:[I

    aget v5, v5, v2

    aget-object v1, v1, v5

    iput-object v1, v3, Landroidx/fragment/app/g0$a;->i:Landroidx/lifecycle/f$c;

    iget-object v1, p0, Landroidx/fragment/app/b;->e:[I

    add-int/lit8 v5, v6, 0x1

    aget v6, v1, v6

    if-eqz v6, :cond_68

    goto :goto_69

    :cond_68
    const/4 v4, 0x0

    :goto_69
    iput-boolean v4, v3, Landroidx/fragment/app/g0$a;->c:Z

    add-int/lit8 v4, v5, 0x1

    aget v5, v1, v5

    iput v5, v3, Landroidx/fragment/app/g0$a;->d:I

    add-int/lit8 v6, v4, 0x1

    aget v4, v1, v4

    iput v4, v3, Landroidx/fragment/app/g0$a;->e:I

    add-int/lit8 v7, v6, 0x1

    aget v6, v1, v6

    iput v6, v3, Landroidx/fragment/app/g0$a;->f:I

    add-int/lit8 v8, v7, 0x1

    aget v1, v1, v7

    iput v1, v3, Landroidx/fragment/app/g0$a;->g:I

    iput v5, p1, Landroidx/fragment/app/g0;->d:I

    iput v4, p1, Landroidx/fragment/app/g0;->e:I

    iput v6, p1, Landroidx/fragment/app/g0;->f:I

    iput v1, p1, Landroidx/fragment/app/g0;->g:I

    invoke-virtual {p1, v3}, Landroidx/fragment/app/g0;->e(Landroidx/fragment/app/g0$a;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v8

    goto/16 :goto_3

    :cond_93
    iget v0, p0, Landroidx/fragment/app/b;->i:I

    iput v0, p1, Landroidx/fragment/app/g0;->h:I

    iget-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/String;

    iput-object v0, p1, Landroidx/fragment/app/g0;->k:Ljava/lang/String;

    iput-boolean v4, p1, Landroidx/fragment/app/g0;->i:Z

    iget v0, p0, Landroidx/fragment/app/b;->l:I

    iput v0, p1, Landroidx/fragment/app/g0;->l:I

    iget-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroidx/fragment/app/g0;->m:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/fragment/app/b;->n:I

    iput v0, p1, Landroidx/fragment/app/g0;->n:I

    iget-object v0, p0, Landroidx/fragment/app/b;->o:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroidx/fragment/app/g0;->o:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/fragment/app/b;->p:Ljava/util/ArrayList;

    iput-object v0, p1, Landroidx/fragment/app/g0;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/b;->q:Ljava/util/ArrayList;

    iput-object v0, p1, Landroidx/fragment/app/g0;->q:Ljava/util/ArrayList;

    iget-boolean v0, p0, Landroidx/fragment/app/b;->r:Z

    iput-boolean v0, p1, Landroidx/fragment/app/g0;->r:Z

    return-void
.end method


# virtual methods
.method public b(Landroidx/fragment/app/x;)Landroidx/fragment/app/a;
    .registers 6

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/b;->a(Landroidx/fragment/app/a;)V

    iget v1, p0, Landroidx/fragment/app/b;->k:I

    iput v1, v0, Landroidx/fragment/app/a;->v:I

    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Landroidx/fragment/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Landroidx/fragment/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v3, v0, Landroidx/fragment/app/g0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g0$a;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/x;->g0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, v3, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/Fragment;

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_30
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/a;->n(I)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object p2, p0, Landroidx/fragment/app/b;->e:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Landroidx/fragment/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroidx/fragment/app/b;->g:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Landroidx/fragment/app/b;->h:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroidx/fragment/app/b;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/b;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/b;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/fragment/app/b;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/b;->m:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Landroidx/fragment/app/b;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/b;->o:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroidx/fragment/app/b;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroidx/fragment/app/b;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Landroidx/fragment/app/b;->r:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
