    <!-- Webpixels CSS -->
    <link href="https://unpkg.com/@webpixels/css@1.1.5/dist/index.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.4.0/font/bootstrap-icons.min.css" rel="stylesheet">
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- DataTables Bootstrap 5 CSS -->
    <link href="https://cdn.datatables.net/2.3.0/css/dataTables.bootstrap5.min.css" rel="stylesheet">

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>



    @include('extend.navbar')

    <!-- Main content -->
    <div class="h-screen flex-grow-1 overflow-y-lg-auto">
        <main class="py-6 px-5 bg-surface-secondary">
            <div class="container-fluid">
                <div class="card shadow border-0 mb-7">
                    <div class="card-header">
                        <h5 class="mb-0">Albums</h5>
                    </div>
                    <div class="table-responsive py-3">
                        <table id="artist" class="table table-hover table-nowrap datatable">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col"> Code</th>
                                    <th scope="col">Artist Name</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($artists as $artist)
                                <tr>
                                    <td>{{ $artist->code }}</td>
                                    <td>{{ $artist->name }}</td>

                                    <td class="text-end">
                                        <button type="button" class="btn btn-primary py-1 px-2" data-bs-toggle="modal" data-bs-target="#viewModal{{ $artist->id }}">
                                            <i class="bi bi-eye"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-warning editBtn px-2"
                                            data-id="{{ $artist->id }}"
                                            data-name="{{ $artist->name }}"
                                            data-code="{{ $artist->code }}"
                                            data-bs-toggle="modal"
                                            data-bs-target="#editModal">
                                            <i class="bi bi-pencil-fill"></i>
                                        </button>
                                        <form action="{{ route('artists.destroy', $artist->id) }}" method="POST" style="display:inline;">
                                                @csrf
                                                @method('DELETE')
                                                <button class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')">
                                                    <i class="bi bi-trash"></i>
                                                </button>
                                            </form>

                                    </td>
                                </tr>

                                <!-- View Modal -->
                                <div class="modal fade" id="viewModal{{ $artist->id }}" tabindex="-1"
                                    aria-labelledby="viewModalLabel{{ $artist->id }}" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="viewModalLabel{{ $artist->id }}">Album Details</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <!-- Details Column -->
                                                    <div class="col-md-7">
                                                        <div class="row">
                                                            <div class="col-md-12 mb-3">
                                                                <strong>Code</strong>
                                                                <p>{{ $artist->code }}</p>
                                                            </div>
                                                            <div class="col-md-12 mb-3">
                                                                <strong>Artist Name</strong>
                                                                <p>{{ $artist->name }}</p>
                                                            </div>

                                                            <div class="col-md-12 mb-3">
                                                                <strong>Created At</strong>
                                                                <p>{{ $artist->created_at->format('Y-m-d H:i:s') }}</p>
                                                            </div>
                                                            <div class="col-md-12 mb-3">
                                                                <strong>Updated At</strong>
                                                                <p>{{ $artist->updated_at->format('Y-m-d H:i:s') }}</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End of View Modal -->

                                <!-- Edit Modal -->
                                <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <form method="POST" action="{{ route('artists.update', ['id' => '__ARTIST_ID__']) }}" id="editForm" enctype="multipart/form-data">
                                            @csrf
                                            @method('PUT')
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="editModalLabel">Edit Artist</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="mb-3">
                                                        <label for="editName" class="form-label">Artist Name</label>
                                                        <input type="text" class="form-control" id="editName" name="name" required>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="editCode" class="form-label">Code</label>
                                                        <input type="text" class="form-control" id="editCode" name="code" required>
                                                    </div>

                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn btn-primary">Update Artist</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- End of Edit Modal -->

                                @endforeach
                            </tbody>

                        </table>
                    </div>

                </div>
            </div>
        </main>
    </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/2.3.0/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/2.3.0/js/dataTables.bootstrap5.min.js"></script>


    <script>
        // for data table
        $(document).ready(function() {
            $('#artist').DataTable({
                responsive: true,
                lengthChange: false,
                language: {
                    search: "_INPUT_",
                    searchPlaceholder: "Search..."
                }
            });
        });
    </script>

    <script>
        //for edit modal 
        document.addEventListener('DOMContentLoaded', function() {
            const editButtons = document.querySelectorAll('.editBtn');
            const editForm = document.getElementById('editForm');
            const coverPreview = document.getElementById('coverPreview');

            editButtons.forEach(button => {
                button.addEventListener('click', () => {
                    const artistId = button.getAttribute('data-id'); // corrected name
                    const name = button.getAttribute('data-name');
                    const code = button.getAttribute('data-code');

                    document.getElementById('editName').value = name;
                    document.getElementById('editCode').value = code;

                    // Update form action correctly
                    editForm.action = `/artists/${artistId}`;
                });
            });
        });
    </script>